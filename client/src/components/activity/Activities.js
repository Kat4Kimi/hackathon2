import { useState, useEffect } from "react";
import axios from 'axios';
import ActivityList from './ActivityList';
import ActivityForm from './ActivityForm';

const Activities = () => {
  const [activities, setActivities] = useState([])

  // before it mounts
  useEffect( () => {
      // grab Activities from the database
      axios.get('/api/activities')
        .then( res => {
          // and set it to state
          setActivities(res.data)
        })
        .catch( err => console.log(err) )
    }, [])

  // add Activity
  const addActivity = (activity) => {
    // add in the db
    // add in the state in the client
    axios.post('/api/activities', { activity })
      .then(res => {
        setActivities([...activities, res.data])
      })
      .catch( err => console.log(err) )
  }

  // update Activity
  const updateActivity = (id, activity) => {
    // update in the db
    axios.put(`/api/activities/${id}`, { activity })
    .then( res => {
      // update in the state in the client
      const updatedActivities = activities.map( a => {
        if (a.id == id) {
          return res.data
        }
        return a
      })
      setActivities(updatedActivities)
    })
    .catch( err => console.log(err) )
  }

  // delete Activity
  const deleteActivity = (id) => {
    // delete in the db
    axios.delete(`/api/activities/${id}`)
      .then( res => {
        // delete in the state in the client
        setActivities(activities.filter( a => a.id !== id))
      })
      .catch( err => console.log(err) )

  }

  return(
    <>
      <ActivityList 
        Activities={Activities} 
        deleteActivity={deleteActivity}
        updateActivity={updateActivity}
      />
      <ActivityForm addActivity={addActivity} />
    </>
  )
}

export default Activities;