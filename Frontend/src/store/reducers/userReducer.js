import {GET_USERS,DELETE_USER,ADD_USER,GET_USERSBYID,EDIT_USER} from '../actions/action';

const initialState = {
	users : [],
	model : false,
}

export default function(state=initialState,action){
	switch(action.type){
		case GET_USERS:
		return {
			...state,
			users:action.payload
		};
		case DELETE_USER:
		return{
			...state,
			users:state.users.filter(user=>user.id !== action.payload)
		};
		case ADD_USER:
		return {
			...state,
			users:[...state.users,action.payload]
		};
		case GET_USERSBYID:
            return{
                ...state,
                users:action.payload
        };
        case EDIT_USER:
            return{
                ...state,
                users:action.payload
        };
		default:
		return state;


	}


}