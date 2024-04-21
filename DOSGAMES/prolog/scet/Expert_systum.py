class Symptom:
    def __init__(self, name):
        self.name = name
        self.present = False

class Disease:
    def __init__(self, name, symptoms1):
        self.name = name
        self.symptoms = symptoms1

class ExpertSystem:
    def __init__(self):
        self.symptoms = []
        self.diseases = []

    def add_symptom(self, name):
        self.symptoms.append(Symptom(name))

    def add_disease(self, name, symptoms):
        self.diseases.append(Disease(name, symptoms))

    def get_symptom_by_name(self, name):
        for symptom in self.symptoms:
            if symptom.name.lower() == name.lower():
                return symptom
        return None

    def ask_symptoms(self):
        print("Please answer with yes or no.")
        for symptom in self.symptoms:
            answer = input(f"Are you experiencing {symptom.name}? ")
            if answer.lower() == 'yes':
                symptom.present = True

    def diagnose(self):
        possible_diseases = []
        for disease in self.diseases:
            match_count = 0
            for symptom in disease.symptoms:
                if symptom.present:
                    match_count += 1
            if match_count == len(disease.symptoms):
                possible_diseases.append(disease.name)

        if possible_diseases:
            print("Possible diseases:")
            for disease in possible_diseases:
                print(disease)
        else:
            print("No matching diseases found.")



# Example usage
expert_system = ExpertSystem()

# Add symptoms
expert_system.add_symptom("Fever")
expert_system.add_symptom("Cough")
expert_system.add_symptom("Headache")

# Add diseases
expert_system.add_disease("Common Cold", [expert_system.get_symptom_by_name("Fever"), expert_system.get_symptom_by_name("Cough")])
expert_system.add_disease("Flu", [expert_system.get_symptom_by_name("Fever"), expert_system.get_symptom_by_name("Cough"), expert_system.get_symptom_by_name("Headache")])

# Start diagnosis
expert_system.ask_symptoms()
expert_system.diagnose()
