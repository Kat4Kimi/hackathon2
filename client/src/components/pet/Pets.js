import { useState, useEffect } from "react";
import axios from 'axios';
import PetList from './PetList';
import PetForm from './PetForm';
import User from "../users/User";
const Pets = ({userId}) => {
  const [pets, setPets] = useState([])

  // before it mounts
  useEffect( () => {
      // grab Pets from the database
      axios.get(`/api/users/${userId}/pets`)
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
    axios.post(`/api/users/${userId}/pets`, { pet })
      .then(res => {
        setPets([...pets, res.data])
      })
      .catch( err => console.log(err) )
  }

  // update pet
  const updatePet = (id, pet) => {
    // update in the db
    axios.put(`/api/users/${userId}/pets/${id}`, { pet })
    .then( res => {
      // update in the state in the client
      const updatedPets = pets.map( p => {
        if (p.id === id) {
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
    axios.delete(`/api/users/${userId}/pets/${id}`)
      .then( res => {
        // delete in the state in the client
        setPets(pets.filter( p => p.id !== id))
      })
      .catch( err => console.log(err) )

  }

  return(
    <>
      <PetList 
        pets={pets} 
        deletePet={deletePet}
        updatePet={updatePet}
      />
      <PetForm addPet={addPet} />
    </>
  )
}

export default Pets;