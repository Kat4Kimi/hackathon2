import { useState, useEffect } from "react";
import axios from 'axios';
import UserList from './UserList';
import UserForm from './UserForm';

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
        setUsers([...users, res.data])
      })
      .catch( err => console.log(err) )
  }

  // update user
  const updateUser = (id, user) => {
    // update in the db
    axios.put(`/api/users/${id}`, { user })
    .then( res => {
      // update in the state in the client
      const updatedUsers = users.map( u => {
        if (u.id === id) {
          return res.data
        }
        return u
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
      <UserList 
        users={users} 
        deleteUser={deleteUser}
        updateUser={updateUser}
      />
    </>
  )
}

export default Users;