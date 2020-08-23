import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { addUser } from '../../store/actions/userAction';

export class UserForm extends Component {
  state = {
    username: '',
    password: '',
    email: '',
  };

  static propTypes = {
    addUser: PropTypes.func.isRequired,
  };

  onChange = (e) => this.setState({ [e.target.name]: e.target.value });

  onSubmit = (e) => {
    e.preventDefault();
    const { username, password, email } = this.state;
    const user = { username, password, email };
    this.props.addUser(user);
    this.setState({
      username: '',
      password: '',
      email: '',
    });
  };

  render() {
    const { username, password, email } = this.state;
    return (
      <div className="card card-body mt-4 mb-4">
        <h2>Add User</h2>
        <form onSubmit={this.onSubmit}>
          <div className="form-group">
            <label>Name</label>
            <input
              className="form-control"
              type="text"
              name="username"
              onChange={this.onChange}
              value={username}
            />
          </div>          
          <div className="form-group">
            <label>password</label>
            <input
              className="form-control"
              type="password"
              name="password"
              onChange={this.onChange}
              value={password}
            />
          </div>
          <div className="form-group">
            <label>Email</label>
            <input
              className="form-control"
              type="email"
              name="email"
              onChange={this.onChange}
              value={email}
            />
          </div>
          <div className="form-group">
            <button type="submit" className="btn btn-primary">
              Submit
            </button>
          </div>
        </form>
      </div>
    );
  }
}

export default connect(null, { addUser })(UserForm);