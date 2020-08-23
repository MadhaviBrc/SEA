import React from 'react'
import { render } from "react-dom";


class Users extends React.Component {
    state = {
    users: []
  }

componentDidMount() {
    fetch('http://localhost:8000/api/users/')
      .then(response => response.json())
      .then(data => {
        this.setState({users: data});
      })
  }

createNewUser = (user) => {
    fetch('api/user/', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(user),
    }).then(response => response.json())
      .then(data => {
      
        this.setState({users: this.state.users.concat([data])});

    });
  }

updateUser = (newUser) => {

    fetch(`http://localhost:8000/api/user/${newUser.id}/`, {

        method: 'PUT',

        headers: {

                'Content-Type': 'application/json',
        },

        body: JSON.stringify(newUser),

    })
    .then(response => response.json())
    .then(newUser => {
        const newUsers = this.state.users.map(user => {

            if(user.id === newUser.id) {

                return Object.assign({}, newUser);

            } else {

                return user;

            }

        })

        this.setState({users: newUsers});

    });
}
deleteUser = (userId) => {

    fetch(`api/user/${userId}/`, {

        method: 'DELETE',

        headers: {

            'Content-Type': 'application/json',

        },

    })

    .then(() => {

        this.setState({users: this.state.users.filter(user => user.id !== userId)})

    });

}

  render() {

      return (

          <main className="d-flex justify-content-center my-4">

              <div  className="col-5">

                  <UserList

                      users={this.state.users}

                      onDeleteClick={this.deleteUser}

                      onUpdateClick={this.updateUser}

                  ></UserList>

                  <ToggleableUserForm

                      onUserCreate={this.createNewUser}

                  ></ToggleableUserForm>

              </div>

          </main>

      )

  }

}



class UserList extends React.Component {
  render() {
    const users = this.props.users.map(user => (
      <EditableUser
        key={user.id}
        id={user.id}
        username={user.username}
        password={user.password}
        email={user.email}
        onDeleteClick={this.props.onDeleteClick}
        onUpdateClick={this.props.onUpdateClick}

      ></EditableUser>
    ));

    return (
      <div>
        {users}
      </div>
    );
  }
}

class ToggleableUserForm extends React.Component {
  state = {
    inCreateMode: false
  }
  handleCreateClick = () => {
    this.setState({inCreateMode: true});
  }
  leaveCreateMode = () => {
    this.setState({inCreateMode: false});
  }
  handleCancleClick = () => {
    this.leaveCreateMode();
  }
  handleFormSubmit = (user) => {
    this.leaveCreateMode();
    this.props.onUserCreate(user);
  }
  render() {
    if (this.state.inCreateMode) {
      return (
        <div className="mb-3 p-4" style={{boxShadow: '0 0 10px #ccc'}} >
          <UserForm 
            onFormSubmit={this.handleFormSubmit}
            onCancelClick={this.handleCancleClick}>
          </UserForm>
        </div>
        
      )
    }
    return (
      <button onClick={this.handleCreateClick} className="btn btn-secondary">
        <i className="fa fa-plus">Add User</i>
      </button>
    );
  }
}

class UserForm extends React.Component {
  state = {
    username: this.props.username || '',
    password: this.props.password || '',
    email: this.props.email || ''
  }

  handleFormSubmit = (evt) => {
    evt.preventDefault();
    this.props.onFormSubmit({...this.state});
  }
  handlec_statusUpdate = (evt) => {
    this.setState({username: evt.target.value});
  }
  handlec_class_nameUpdate = (evt) => {
    this.setState({password: evt.target.value});
  }
  handlec_descriptionUpdate = (evt) => {
    this.setState({email: evt.target.value});
  }

  render() {
    const buttonText = this.props.id ? 'Update User': 'Create User';
    return (
      <form onSubmit={this.handleFormSubmit}>
        <div className="form-group">
          <label>
            UserName
          </label>
          <input type="text" placeholder="Enter Name"
            value={this.state.username} onChange={this.handlec_statusUpdate}
            className="form-control"
          />
        </div>
        
        <div className="form-group">
          <label>
            Password
          </label>
          <input type="password" placeholder="Enter Password"
            value={this.state.password} onChange={this.handlec_class_nameUpdate}
            className="form-control"
          />
        </div>
        
        <div className="form-group">
          <label>
            Email
          </label>
          <textarea className="form-control" placeholder="Enter Email"
            rows="5" value={this.state.email}
            onChange={this.handlec_descriptionUpdate}
          >
            {this.state.email}
          </textarea>
        </div>

        <div className="form-group d-flex justify-content-between">
          <button type="submit" className="btn btn-md btn-primary">
            {buttonText}
          </button>
          <button type="button" className="btn btn-md btn-secondary" onClick={this.props.onCancelClick}>
            Cancel
          </button>
        </div>
      </form>
    )
  }
}

class EditableUser extends React.Component {
  state = {
    inEditMode: false
  };

  enterEditMode = () => {
    this.setState({inEditMode: true});
  }

  leaveEditMode = () => {
    this.setState({inEditMode: false});
  }
  handleDelete = () => {
    this.props.onDeleteClick(this.props.id);
  }
  handleUpdate = (user) => {
    this.leaveEditMode()
    user.id = this.props.id;
    this.props.onUpdateClick(user);
  }

  render() {
    const component = () => {
      if(this.state.inEditMode) {
        return (
          <UserForm 
            id={this.props.id}
            username={this.props.username}
            password={this.props.password}
            email={this.props.email}
            onCancelClick={this.leaveEditMode}
            onFormSubmit={this.handleUpdate}
          />
        );
      } 
      return (
        <User 
          id={this.props.id}
          username={this.props.username}
          password={this.props.password}
          email={this.props.email}
          onEditClick={this.enterEditMode}
          onDeleteClick={this.handleDelete}
        />
      )
    }
    return (
      <div className="mb-3 p-4" style={{boxShadow: '0 0 10px #ccc'}} >
        {component()}
      </div>
    )
  }
}

class User extends React.Component {
  render() {
    return (
      <div className="card" /* style="width: 18rem;" */>
        <div className="card-header d-flex justify-content-between">
          <span>
            <strong>userName: </strong>{this.props.username}
          </span>
          <div>
            <span onClick={this.props.onEditClick} className="mr-2"><i className="fa fa-edit"></i></span>
            <span onClick={this.props.onDeleteClick}><i className="fa fa-trash"></i></span>
          </div>

        </div>
        <div className="card-body">
          {this.props.password}
        </div>
        <div className="card-footer">
          <strong>Email:</strong>  {this.props.email}
        </div>
      </div>
    );
  }
}
export default Users;
