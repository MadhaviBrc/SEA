import React from 'react';
import ReactDOM from 'react-dom';
import App from "./components/App";
import * as serviceWorker from './components/serviceWorker';
import { BrowserRouter } from 'react-router-dom';
import { createStore ,combineReducers, applyMiddleware } from 'redux';
import  UIreducer from './store/reducers/reducer';
import  userReducer from './store/reducers/userReducer';
import { Provider } from 'react-redux';
import thunk from 'redux-thunk';

const middleWare = applyMiddleware(thunk);

const rootReducer = combineReducers({
    ui_red:UIreducer,
    users : userReducer
});
const store = createStore(rootReducer,middleWare);
const app = (
    <Provider store={store}>
        <BrowserRouter>
            <App />
        </BrowserRouter>
    </Provider>
);


ReactDOM.render(app, document.getElementById('app'));
serviceWorker.unregister();


