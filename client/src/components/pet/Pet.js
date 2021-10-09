import { useState } from 'react';
import Activities from '../activity/Activities';
import Users from '../users/Users';
import PetForm from './PetForm';
import Pets from './Pets';


const Comment = ({ id, name, breed, weight, dob, deletePet, updatePet }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
      <li>
        {breed}
				<br />
        {weight}
				<br />
        {dob}
				<br />
        {name}
				<br />
        {
          editing ?
          <>
            <PetForm
              id={id}
              breed={breed}
              name={name}
              weight={weight}
              dob={dob}
              updatePet={updatePet}
              setEdit={setEdit}
            />
            <PetForm
              id={id}
              breed={breed}
              name={name}
              weight={weight}
              dob={dob}
              updatePet={editPet}
              setEdit={setEdit}
            />
          </>
          :
          <button onClick={() => setEdit(true)}>Edit</button>
        }
        <button onClick={() => deletePet(id)}>Delete</button>
      </li>
			<Activities petId={id} />
    </>
  )
}

export default Pet;