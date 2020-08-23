import axios from 'axios';
import {GET_USERS,DELETE_USER,ADD_USER,GET_USERSBYID,EDIT_USER} from './action';

export const getUsers = () => dispatch => {

	axios.get('/api/users/')
	.then(res => {
		dispatch({
			type : GET_USERS,
			payload : res.data
		});
	}).catch(err => console.log(err));

}
//Delete User

export const deleteUser = (id) => dispatch =>{
    axios
    .delete(`/api/users/${id}/`)
    .then(res =>{
        dispatch({
            type:DELETE_USER,
            payload:id
        });
    })
    .catch(err=>console.log(err));
};

//Add User

export const addUser = (user) => dispatch =>{
    axios
    .post(`/api/users/`,user)
    .then(res =>{
        dispatch({
            type:ADD_USER,
            payload:res.data
        });
    }).catch(err=>console.log(err));
};

//Get Users by id

export const getUsersById = (id) => dispatch =>{
    axios
    .get(`/api/users/${id}/`)
    .then(res =>{
    	console.log(res.data)
        dispatch({
            type:GET_USERSBYID,
            payload:res.data
        });
    }).catch(err=>console.log(err));
};

export const editUser = (id,user) => dispatch =>{
    axios
    .put(`/api/users/${id}/`,user)
    .then(res =>{
        dispatch({
            type:EDIT_USER,
            payload:res.data
        });
    }).catch(err=>console.log(err));
};

