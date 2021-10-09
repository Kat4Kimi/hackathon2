import { useState } from 'react';
import ActivityForm from './ActivityForm';
import { Link } from 'react-router-dom';


const  Appointment = ({ id, food, exercise, potty, other,  deleteActivity, updateActivity }) => {
  const [editing, setEdit] = useState(false)

  return (
    <>
    <br />
      <li>
        {food}
        <br />
        {exercise}
				<br />
        {potty}
        <br />
        {other}
        <br />
        <Link to="/appointments">
          <button type="button">View Appointments</button>
        </Link>
        {
          editing ?
          <>
            <ActivityForm
              id={id}
              vet={food}
              groomer={exercise}
              trainer={potty}
              trainer={other}
              updateActivity={updateActivity}
              setEdit={setEdit}
            />
          </>
          :
          <button onClick={() => setEdit(true)}>Edit</button>
        }
        <button onClick={() => deleteActivity(id)}>Delete</button>
      </li>
     
    </>
  )
}

export default Appointment;