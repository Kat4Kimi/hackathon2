import { useState, useEffect } from "react";
import axios from 'axios';
import userList from './userList';
import userForm from './userForm';

const Users = () => {
  const [users, setUsers] = useState([])

  // before it mounts
  useEffect( () => {
      // grab Users from the database
      axios.get('/api/users')
        .then( res => {
          // and set it to state
          setUsers(res.data)
        })
        .catch( err => console.log(err) )
    }, [])

  // add user
  const addUser = (user) => {
    // add in the db
    // add in the state in the client
    axios.post('/api/users', { user })
      .then(res => {
        setUsers([...Users, res.data])
      })
      .catch( err => console.log(err) )
  }

  // update user
  const updateUser = (id, user) => {
    // update in the db
    axios.put(`/api/users/${id}`, { user })
    .then( res => {
      // update in the state in the client
      const updatedUsers = Users.map( w => {
        if (w.id == id) {
          return res.data
        }
        return w
      })
      setUsers(updatedUsers)
    })
    .catch( err => console.log(err) )
  }

  // delete user
  const deleteUser = (id) => {
    // delete in the db
    axios.delete(`/api/users/${id}`)
      .then( res => {
        // delete in the state in the client
        setUsers(users.filter( u => u.id !== id))
      })
      .catch( err => console.log(err) )

  }

  return(
    <>
      <userList 
        Users={Users} 
        deleteUser={deleteUser}
        updateUser={updateUser}
      />
      <userForm adduser={addUser} />
    </>
  )
}

export default Users;