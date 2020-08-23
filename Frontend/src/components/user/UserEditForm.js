import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { editUser,getUsersById } from '../../store/actions/userAction';
import AUX from '../../hoc/Aux_';


export class UserEditForm extends Component {
  constructor(props) {
        super(props);
        console.log(this.props.users)
        this.onChange = this.onChange.bind(this);
    
      }

    

    componentDidMount() {
        
        const userId = this.props.match.params.userid
        //const userName = this.props.match.params.user.username
        //const email = this.props.match.params.user.email
       this.props.getUsersById(userId)
        

    
    }

    onChange = e => this.props.users[e.target.name]=e.target.value ;
        
    onSubmit = e => {

        e.preventDefault();
        const {username,password,email} = this.props.users;
        const user = { username,password,email };
        this.props.editUser(this.props.users.id,user);
        
       
    };

    render() {
        
       // const {username,password,email} = this.state;
        return (
            <AUX>
            <div className = 'card card-body mt-4 mb-4'>
                <h2>Update User</h2>
                <form onSubmit = {this.onSubmit}>
                    <div className = "form-group">
                        <label>UserName</label>
                        <input
                            className = "form-control"
                            type = "text"
                            name = "username"
                            defaultValue = {this.props.users.username}
                            onChange = {this.onChange}
                            />
                    </div>
                    <div className = "form-group">
                        <label>Password</label>
                        <input
                            className = "form-control"
                            type = "text"
                            name = "password"
                            onChange = {this.onChange}
                            defaultValue = {this.props.users.password}
                            />
                    </div>
                    <div className = "form-group">
                        <label>Email</label>
                        <input
                            className = "form-control"
                            type = "text"
                            name = "email"
                            onChange = {this.onChange}
                            defaultValue = {this.props.users.email}
                            />
                    </div>
                    <div className = "form-group">
                        <button type = "submit" className = "btn btn-success">
                            Submit
                        </button>

                    </div>
                </form>
            </div>
            </AUX>
        )
    }
}

const mapStateToProps = state =>({
    users:state.users.users //state.user(this is from reducer).users
  });

export default connect(
  mapStateToProps,
  {getUsersById,editUser})(UserEditForm);