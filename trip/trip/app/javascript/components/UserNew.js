import React from 'react';

const UserNew = ({ user }) => {
  // in case of failed form still save the 
  // users input
  // continue the pattern for all fields
  const { name } = sub
  const defaultName = name ? name : ""
  return (
    <>
      <h1>New User Form</h1>
      <form action='/users' method="post">
        <input
          type="text"
          defaultValue={defaultName}
          name="user[name]"

          // optional
          required
          placeholder="Name"
        />
        <button type='submit'>Add User</button>
      </form>
    </>
  )
}

export default UserNew;