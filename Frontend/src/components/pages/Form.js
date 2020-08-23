import React, { Component } from "react";
import Modal from "./Modal";
import axios from "axios";

class Form extends Component {
  constructor(props) {
    super(props);
    this.state = {
      users: {
        username: "",
        password: "",
        email: "",
      },
      user_list: []
    };
  }
  componentDidMount() {
    this.refreshList();
  }
  refreshList = () => {
    axios
      .get("/api/users/")
      .then(res => this.setState({ user_list: res.data }))
      .catch(err => console.log(err));
  };

  renderItems = () => {
    const newUsers = this.state.user_list
    return newUsers.map(user => (
      <li
        key={user.user_id}
        className="list-group-item d-flex justify-content-between align-items-center"
      >
        <span
         
          
          // title={user.password}
        >
          {user.username}
        </span>
        
        <span>
          {user.password}
        </span>

        <span>
          {user.email}
        </span>

        <span>
          <button
            onClick={() => this.editItem(user)}
            className="btn btn-warning mr-2"
          >
            {" "}
            Edit{" "}
          </button>
          <button
            onClick={() => this.handleDelete(user)}
            className="btn btn-danger"
          >
            Delete{" "}
          </button>
        </span>
      </li>
    ));
  };
  toggle = () => {
    this.setState({ modal: !this.state.modal });
  };
  handleSubmit = user => {
    this.toggle();
    if (user.user_id) {
      axios
        .put(`/api/users/${user.user_id}/`, user)
        .then(res => this.refreshList());
      return;
    }
    axios
      .post("/api/users/", user)
      .then(res => this.refreshList());
  };
  handleDelete = user => {
    axios
      .delete(`/api/users/${user.user_id}`)
      .then(res => this.refreshList());
  };
  createItem = () => {
    const user = { username: "", password: "" , email: "" };
    this.setState({ users: user, modal: !this.state.modal });
  };
  editItem = user => {
    this.setState({ users: user, modal: !this.state.modal });
  };
  render() {
    return (
      <main className="content">
        <h1 className="text-white text-uppercase text-center my-4">Users</h1>
        <div className="row ">
          <div className="col-md-6 col-sm-10 mx-auto p-0">
            <div className="card p-3">
              <div className="">
                <button onClick={this.createItem} className="btn btn-primary mb-3">
                  Add task
                </button>
                
              </div>
              <ul className="list-group list-group-flush">
                {this.renderItems()}
              </ul>
            </div>
          </div>
        </div>
        {this.state.modal ? (
          <Modal
            users={this.state.users}
            toggle={this.toggle}
            onSave={this.handleSubmit}
          />
        ) : null}
      </main>
    );
  }
}
export default Form;