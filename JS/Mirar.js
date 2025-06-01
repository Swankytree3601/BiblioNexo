function Mirar(){
    db.collection("users").where("genero", "==", "masculino")
    .get()
    .then((querySnapshot) => {
        querySnapshot.forEach((doc) => {
            // doc.data() is never undefined for query doc snapshots
            console.log(doc.id, " => ", doc.data());
        });
    })
    .catch((error) => {
        console.log("Error obteniendo el documento: ", error);
    });
}