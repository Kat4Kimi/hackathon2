import { useState } from 'react';
import ConnectedLogin from '../auth/Login';
import UserForm from './UserForm';
import { Link } from 'react-router-dom';
import Pets from '../pet/Pets'
import Activities from '../activity/Activities'
import Appointments from '../appointment/Appointments';

const User = ({ id, first_name, last_name, email, password, deleteUser, updateUser }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
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
        <Link to="/pets">
          <button type="button">View Pets</button>
        </Link>
      
        {
          editing ?
          <>
            <UserForm
              id={id}
              firstName={first_name}
              lastName={last_name}
              updateUser={updateUser}
              setEdit={setEdit}
            />
          </>
          :
          <button onClick={() => setEdit(true)}>Edit</button>
        }
        <button onClick={() => deleteUser(id)}>Delete</button>
      </li>

    </>
  )
}

export default User;