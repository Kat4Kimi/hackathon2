import { useState, useEffect } from 'react';

const UserForm = ({  id, first_name, last_name, email, password, updateUser, setEdit }) => {
  const [user, setUser] = useState({ first_name: "", last_name: "", email: "", password:"" })

  useEffect( () => {
    if (id) {
      setUser({ first_name, last_name, email, password })
    }
  }, [])

  const handleSubmit = (e) => {
    e.preventDefault()
    if (id) {
      updateUser(id, user)
      setEdit(false)
    }
    // } else {
    //   addUser(user)
    // }
    setUser({ first_name: "", last_name: "" , email: "", password: "" })
  }

  return (
    <>
    <h4>Edit User</h4>
      <form onSubmit={handleSubmit}>
        <input 
          name="first_name"
          value={user.first_name}
          onChange={(e) => setUser({...user, first_name: e.target.value })}

          required
          placeholder="First Name"
        />
        <input 
          name="last_name"
          value={user.last_name}
          onChange={(e) => setUser({...user, last_name: e.target.value })}

          required
          placeholder="Last Name"
        /> 
 
        <button type="submit">Submit</button>
      </form>

    </>
  )
}

export default UserForm;