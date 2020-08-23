import React, { Component } from "react";
import {
  Button,
  Modal,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Form,
  FormGroup,
  Input,
  Label
} from "reactstrap";

export default class CustomModal extends Component {
  constructor(props) {
    super(props);
    this.state = {
      users: this.props.users
    };
  }
  handleChange = e => {
    let { name, value } = e.target;
   
    const users = { ...this.state.users, [name]: value };
    this.setState({ users });
  };
  render() {
    const { toggle, onSave } = this.props;
    return (
      <Modal isOpen={true} toggle={toggle}>
        <ModalHeader toggle={toggle}> Users </ModalHeader>
        <ModalBody>
          <Form>
            <FormGroup>
              <Label for="username">Username</Label>
              <Input
                type="text"
                name="username"
                value={this.state.users.username}
                onChange={this.handleChange}
                placeholder="Enter Username"
              />
            </FormGroup>
            <FormGroup>
              <Label for="password">Password</Label>
              <Input
                type="text"
                name="password"
                value={this.state.users.password}
                onChange={this.handleChange}
                placeholder="Enter Password"
              />
            </FormGroup>

            <FormGroup>
              <Label for="email">Email</Label>
              <Input
                type="text"
                name="email"
                value={this.state.users.email}
                onChange={this.handleChange}
                placeholder="Enter Email"
              />
            </FormGroup>

            
          </Form>
        </ModalBody>
        <ModalFooter>
          <Button color="success" onClick={() => onSave(this.state.users)}>
            Save
          </Button>
        </ModalFooter>
      </Modal>
    );
  }
}