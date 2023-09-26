import requests
import re

while True:

    url = input("Εισάγετε το URL της ιστοσελίδας: ")
    response = requests.get(url)

    if response.status_code == 200:
        content = response.text
        # Ψάχνουμε για το αν η ιστοσελίδα αφορά συνέδριο
        if re.search(r'\bconference\b', content, re.I):
            print("Η ιστοσελίδα αφορά ένα συνέδριο.")

            # Ψάχνουμε πληροφορίες σχετικά με το χρονικό διάστημα
            date_match = re.search(r'(\d{1,4}[-/]\d{1,2}[-/]\d{1,4}|\d{1,2}[-/]\d{1,2}[-/]\d{1,4})', content)
            if date_match:
                conference_date = date_match.group(0)
                print("Η ημερομηνία του συνεδρίου είναι:", conference_date)
            else:
                # Αν δεν βρεί τη μορφή "YYYY-MM-DD," ψάχνει για τη μορφή "M/DD/YYYY"
                date_match = re.search(r'(\d{1,2}/\d{1,2}/\d{4})', content)
                if date_match:
                    conference_date = date_match.group(0)
                    print("Η ημερομηνία του συνεδρίου είναι:", conference_date)

            # Ψάχνουμε πληροφορίες σχετικά με τον τόπο διεξαγωγής
            location_match = re.search(r'Τόπος διεξαγωγής: (.+?)<', content)
            if location_match:
                conference_location = location_match.group(1)
                print("Ο τόπος διεξαγωγής είναι:", conference_location)

            # Ψάχνουμε πληροφορίες σχετικά με το κόστος συμμετοχής
            cost_match = re.search(r'Κόστος συμμετοχής: (.+?)<', content)
            if cost_match:
                conference_cost = cost_match.group(1)
                print("Το κόστος συμμετοχής είναι: ", conference_cost)

            # Ψάχνουμε πληροφορίες σχετικά με το αντικείμενο του συνεδρίου
            subject_match = re.search(r'Αντικείμενο συνεδρίου: (.+?)<', content)
            if subject_match:
                conference_subject = subject_match.group(1)
                print("Το αντικείμενο του συνεδρίου είναι: ", conference_subject)
        else:
            print("Η ιστοσελίδα δεν αφορά συνέδριο.")

        choice = input("Θέλετε να κάνετε άλλη αναζήτηση; (ναι/όχι): ")
        if choice.lower() != "ναι":
            break
    else:
        print("Σφάλμα κατά τη φόρτωση της ιστοσελίδας. Ελέγξτε το URL.")

print("Τερματισμός προγράμματος")
