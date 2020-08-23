import React, { Component } from "react";
import { connect } from "react-redux";
import { getUsers,deleteUser } from '../../store/actions/userAction';
import PropTypes from 'prop-types';
import UserForm from './UserForm';


class Users extends React.Component {
	static propTypes = {
		users : PropTypes.array.isRequired
	}

	componentDidMount()
	{
		this.props.getUsers();
	}


	render() {	
	let addModelClose= () => this.setState({addModelShow:false})	
		return (
			<div>
            
			{/* Row */}
            <div class="row">

              <div class="col-md-12 col-lg-12">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Users</h3>
                  </div>
                  <div class="table-responsive">
                    <table class="table card-table table-vcenter text-nowrap table-primary mb-0">
                      <thead  class="bg-primary text-white">
                      
                        <tr >
                          <th class="text-white">Name</th>
                          <th class="text-white">Email</th>
                          <th class="text-white">Password</th>
                          <th class="text-white">Action</th>
                        </tr>
                      
                      </thead>
                      <tbody>
                      {this.props.users.map(item => (
                        <tr key={item.id}>

                          <th scope="row">{item.username}</th>
                          <td>{item.password}</td>
                          <td>{item.email}</td>
                          <td>
                            <span onClick={this.props.UpdateLogin()} className="mr-2"><i className="fa fa-edit"></i></span>
                            <span onClick={this.props.deleteUser.bind(this,item.id)}><i className="fa fa-trash"></i></span>
                          </td>
                        </tr>
                      ))}
                      </tbody>
                    </table>
                  </div>
                  {/* table-responsive */}
                </div>
              </div>
            </div>
            {/* End Row */}
            <UserForm 
            show={this.props.addModelShow}
            onHide={addModelClose}
            />
				
			</div>
		);
	}
}

const mapStateToProps = state => ({
	users:state.users.users
});


export default connect(mapStateToProps,{ getUsers,deleteUser})(Users);