import { useState } from 'react';
import ConnectedLogin from '../auth/Login';
import UserForm from './UserForm';

const User = ({ id, first_name, last_name, email, password, deleteUser, updateUser }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
      <a href={`/users/${id}/pets`}>User</a>
      <li>
        <br />
				{first_name}
				<br />
				{last_name}
        <br />
        {email}
        <br />
        {password}
        <br />
      
        {
          editing ?
          <>
            <UserForm
              id={id}
              firstName={first_name}
              lastName={last_name}
							email={email}
							password={password}
              updateTodo={updateUser}
              setEdit={setEdit}
            />
          </>
          :
          <button onClick={() => setEdit(true)}>Edit</button>
        }
        <button onClick={() => deleteUser(id)}>Delete</button>
      </li>
      <ConnectedLogin userId={id} />
    </>
  )
}

export default User;