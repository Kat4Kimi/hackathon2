import React from 'react';

const User = ({ user }) => {
  const { name, id } = sub
  return (
    <>
      <h1>{name}</h1>
      <br />
      <a href="/">Back</a>
      <br />
      <a href={`/users/${id}/trip1s`}>Trips</a>
    </>
  )
}

export default User;
