import { useState, useEffect } from 'react';

const ActivityForm = ({ addActivity, id, pet_id, food, exercise, potty, other, updateActivity, setEdit }) => {
  const [activity, setActivity] = useState({ food: "", exercise: "", potty: "", other: "" })

  useEffect( () => {
    if (id) {
      setActivity({ food, exercise, potty, other })
    }
  }, [])

  const handleSubmit = (e) => {
    e.preventDefault()
    if (id) {
      updateActivity(id, activity)
      setEdit(false)
    } else {
      addActivity(activity)
    }
    setActivity({ food: "", exercise: "", potty: "", other: "" })
  }

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input 
          name="food"
          value={activity.food}
          onChange={(e) => setActivity({...activity, food: e.target.value })}

          required
          placeholder="Breed"
        />
        <input 
          name="exercise"
          value={activity.exercise}
          onChange={(e) => setUser({...activity, exercise: e.target.value })}

          required
          placeholder="Exercise"
        />
        <input 
          name="potty"
          value={activity.potty}
          onChange={(e) => setActivity({...activity, potty: e.target.value })}

          required
          placeholder="Potty"
        />
        <input 
          name="other"
          value={activity.other}
          onChange={(e) => setActivity({...activity, other: e.target.value })}

          required
          placeholder="Other"
        />
     
        <button type="submit">Submit</button>
      </form>

    </>
  )
}

export default ActivityForm;