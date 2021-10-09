import { useState, useEffect } from "react";
import axios from 'axios';
import PetList from './PetList';
import PetForm from './PetForm';

const Pets = () => {
  const [pets, setPets] = useState([])

  // before it mounts
  useEffect( () => {
      // grab Pets from the database
      axios.get('/api/pets')
        .then( res => {
          // and set it to state
          setPets(res.data)
        })
        .catch( err => console.log(err) )
    }, [])

  // add pet
  const addPet = (pet) => {
    // add in the db
    // add in the state in the client
    axios.post('/api/pets', { pet })
      .then(res => {
        setPets([...pets, res.data])
      })
      .catch( err => console.log(err) )
  }

  // update pet
  const updatePet = (id, pet) => {
    // update in the db
    axios.put(`/api/pets/${id}`, { pet })
    .then( res => {
      // update in the state in the client
      const updatedPets = pets.map( p => {
        if (p.id == id) {
          return res.data
        }
        return p
      })
      setPets(updatedPets)
    })
    .catch( err => console.log(err) )
  }

  // delete pet
  const deletePet = (id) => {
    // delete in the db
    axios.delete(`/api/pets/${id}`)
      .then( res => {
        // delete in the state in the client
        setPets(pets.filter( p => p.id !== id))
      })
      .catch( err => console.log(err) )

  }

  return(
    <>
      <petList 
        Pets={Pets} 
        deletepet={deletePet}
        updatepet={updatePet}
      />
      <petForm addpet={addPet} />
    </>
  )
}

export default Pets;