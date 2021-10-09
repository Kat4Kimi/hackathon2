import { useState, useEffect } from 'react';

const PetForm = ({ addPet, id, user_id, breed, name, weight, dob, updatePet, setEdit }) => {
  const [pet, setPet] = useState({ breed: "", name: "", weight: "", dob: "" })

  useEffect( () => {
    if (id) {
      setPet({ breed, name, weight, dob })
    }
  }, [])

  const handleSubmit = (e) => {
    e.preventDefault()
    if (id) {
      updatePet(id, pet)
      setEdit(false)
    } else {
      addPet(pet)
    }
    setPet({ breed: "", name: "", weight: "", dob: "" })
  }

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input 
          name="breed"
          value={pet.breed}
          onChange={(e) => setPet({...pet, breed: e.target.value })}

          required
          placeholder="Breed"
        />
        <input 
          name="name"
          value={pet.name}
          onChange={(e) => setPet({...pet, name: e.target.value })}

          required
          placeholder="Name"
        />
        <input 
          name="weight"
          value={pet.weight}
          onChange={(e) => setPet({...pet, weight: e.target.value })}

          required
          placeholder="Weight"
        />
        <input 
          name="dob"
          value={pet.dob}
          onChange={(e) => setPet({...pet, dob: e.target.value })}

          required
          placeholder="Date of Birth"
        />
     
        <button type="submit">Submit</button>
      </form>

    </>
  )
}

export default PetForm;