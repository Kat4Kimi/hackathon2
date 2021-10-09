import { useState, useEffect } from "react";
import axios from 'axios';
import AppointmentList from './AppointmentList';
import AppointmentForm from './AppointmentForm';

const Appointments = ({activityId}) => {
  const [appointments, setAppointments] = useState([])

  // before it mounts
  useEffect( () => {
      // grab Appointments from the database
      axios.get(`/api/activites/${activityId}/appointments`)
        .then( res => {
          // and set it to state
          setAppointments(res.data)
        })
        .catch( err => console.log(err) )
    }, [])

  // add Appointment
  const addAppointment = (appointment) => {
    // add in the db
    // add in the state in the client
    axios.post(`/api/activites/${activityId}/appointments`, { appointment })
      .then(res => {
        setAppointments([...appointments, res.data])
      })
      .catch( err => console.log(err) )
  }

  // update Appointment
  const updateAppointment = (id, appointment) => {
    // update in the db
    axios.put(`/api/activites/${activityId}/appointments/${id}`, { appointment })
    .then( res => {
      // update in the state in the client
      const updatedAppointments = appointments.map( ap => {
        if (ap.id === id) {
          return res.data
        }
        return ap
      })
      setAppointments(updatedAppointments)
    })
    .catch( err => console.log(err) )
  }

  // delete Appointment
  const deleteAppointment = (id) => {
    // delete in the db
    axios.delete(`/api/activites/${activityId}/appointments/${id}`)
      .then( res => {
        // delete in the state in the client
        setAppointments(appointments.filter( ap => ap.id !== id))
      })
      .catch( err => console.log(err) )

  }

  return(
    <>
      <AppointmentList 
        Appointments={Appointments} 
        deleteAppointment={deleteAppointment}
        updateAppointment={updateAppointment}
      />
      <AppointmentForm addAppointment={addAppointment} />
    </>
  )
}

export default Appointments;