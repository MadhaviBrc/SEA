import React, { Component } from "react";
import { render } from "react-dom";
import AUX from '../../../hoc/Aux_';


class Student extends React.Component {
  
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


  handleDelete = (id) => {
    this.deleteUser(id);
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
                      {this.state.users.map(item => (
                        <tr>
                          <th scope="row">{item.username}</th>
                          <td>{item.password}</td>
                          <td>{item.email}</td>
                          <td>
                            <span onClick={() => enterEditMode(item.id)} className="mr-2"><i className="fa fa-edit"></i></span>
                            <span onClick={() => {if(window.confirm('Delete User?')){this.handleDelete(item.id)};}}><i className="fa fa-trash"></i></span>
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
      </div>      
    );
  }
}





export default Student;