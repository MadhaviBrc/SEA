import React , { Component } from 'react';
import Home from '../../components/pages/Home';
import Login from '../../components/pages/Login';
import Index1 from '../../containers/maincontent/index/Index1';
import Index2 from '../../containers/maincontent/index/Index2';
import Users from '../../components/user/Users';
import Student from '../../containers/maincontent/users/Student';
import Form from '../../components/pages/Form';
import UserEditForm from '../../components/user/UserEditForm';



import { Route,Switch } from 'react-router-dom';

class mainbuilder extends Component{
    render(){
        return(
                <Switch> 
                  
                    <Route path="/login" component={Login} />                    
                    <Route path="/index" component={Index1} />
                    <Route path="/index2" component={Index2} />
                    <Route path="/users" component={Users} />
                    <Route path="/student/2" component={Student} />
                    <Route path="/parent" component={Form} />
                    <Route path="/useredit/:userid" component={UserEditForm} />
                    <Route path="/" component={Home} />


                    
                </Switch>
        );
    }
}

export default mainbuilder;