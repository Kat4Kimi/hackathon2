import User from './User';

const UserList = ({ users, deleteUser, updateUser }) => {
  return (
    <>
      <ul>
        {
          users.map( u => 
            <User 
              {...u} 
              deleteUser={deleteUser}
              updateUser={updateUser}
            />
          )
        }
      </ul>
    </>
  )
}

export default UserList;