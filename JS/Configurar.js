const firebaseConfig = {
  apiKey: "AIzaSyAE0RzsfHG7zS9g3o3hpAYOL1PobZzhJo8",
  authDomain: "biblionexo-db.firebaseapp.com",
  projectId: "biblionexo-db",
  storageBucket: "biblionexo-db.firebasestorage.app",
  messagingSenderId: "401486747485",
  appId: "1:401486747485:web:ed521d054e7affb19ffab4"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

// Initialize Cloud Firestore and get a reference to the service
const db = firebase.firestore();
