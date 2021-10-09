import { useState } from 'react';
import Activities from '../activity/Activities';
import Users from '../users/Users';
import PetForm from './PetForm';
import Pets from './Pets';
import { Link } from 'react-router-dom';


const Pet = ({ id, name, weight, dob, deletePet, updatePet }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
      <li>
        {weight}
				<br />
        {dob}
				<br />
        {name}
				<br />
        <Link to="/activity">
          <button type="button">View Activities</button>
        </Link>
        {
          editing ?
          <>
            <PetForm
              id={id}
              name={name}
              weight={weight}
              dob={dob}
              updatePet={updatePet}
              setEdit={setEdit}
            />
          </>
          :
          <button onClick={() => setEdit(true)}>Edit</button>
        }
        <button onClick={() => deletePet(id)}>Delete</button>
      </li>
    </>
  )
}

export default Pet;