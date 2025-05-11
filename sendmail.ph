<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $to = "votre.email@exemple.com";
  $subject = "Nouvelle réservation";
  $message = "Détails de la réservation:\n";
  foreach ($_POST as $key => $value) {
    $message .= ucfirst($key) . ": " . $value . "\n";
  }
  $headers = "From: " . $_POST['email'];

  if (mail($to, $subject, $message, $headers)) {
    echo "Réservation envoyée avec succès.";
  } else {
    echo "Erreur lors de l'envoi de la réservation.";
  }
}
?>
