<h1 align="center">
  <img height="35px" src="https://github.com/JohnMata0427/Food-Ordering-API-RESTful/assets/150484680/842b4e83-fd68-4f5e-8b20-e644053a69cf" alt="Logo">
  $\color{Apricot}{Food\ Ordering\ at\ ESFOT\ Mobile\ App}$
  <img height="35px" src="https://github.com/JohnMata0427/Food-Ordering-API-RESTful/assets/150484680/842b4e83-fd68-4f5e-8b20-e644053a69cf" alt="Logo">
</h1>

---

> [!IMPORTANT]
> **Problematic Introduction**
> 
> The lunchtime rush at ESFOT poses a significant operational challenge.
> The influx of students seeking to order their meals within a limited timeframe (11 AM to 2 PM) results in the formation of long queues.
> These extended wait times not only inconvenience students but also negatively impact their overall dining experience.
> Additionally, the manual ordering process, with its inherent limitations, can lead to inefficiencies and potential errors.
> The existing system struggles to accommodate the high volume of orders during peak hours, leading to delays and frustration among students.

---

<h3 id="sprint-0">🌑 Sprint 0 - Mobile Development Environment Configuration (Dark Theme)</h3>

<details>
  <summary>✅ Definition of requirements and Constraints</summary>
  <ul>
    <li>The mobile app has the following profiles: Cook and Student.</li>
    <li>There is a backend and a series of public and private APIs available for consumption.</li>
    <li>The Cook profile can:
      <ul>
        <li>Register and log in.</li>
        <li>Manage their profile.</li>
        <li>Manage products.</li>
      </ul>
    </li>
    <li>The Student profile can:
      <ul>
        <li>Register and log in.</li>
        <li>Add products to the cart.</li>
        <li>Make purchases.</li>
      </ul>
    </li>
  </ul>

</details>

<details>
  <summary>✅ Mobile Frontend Project Structure (Flutter + Dart)</summary>
  
  > - **Tools**
  > 
  > | Image                                                        | Name                       |
  > |--------------------------------------------------------------|----------------------------|
  > | ![VSCode](https://skillicons.dev/icons?i=vscode&theme=dark)  | Visual Studio Code         |
  > | ![Dart](https://skillicons.dev/icons?i=dart&theme=dark)      | Dart                       |
  > | ![Flutter](https://skillicons.dev/icons?i=flutter&theme=dark)| Flutter                    |
  > | ![Android](https://skillicons.dev/icons?i=androidstudio&theme=dark)| Android Studio (optional)  |
  
  > - **Project Initialization and Installation Dependencies**
  >   
  >   - Primero, asegúrate de que tienes Flutter instalado. Si no lo tienes, sigue las instrucciones de instalación en la [documentación oficial de Flutter](https://flutter.dev/docs/get-started/install).
  >   - Crea un nuevo proyecto Flutter usando el siguiente comando:
  >     ```
  >     flutter create my_app
  >     ```
  >   - Navega a tu directorio de proyecto:
  >     ```
  >     cd my_app
  >     ```
  >   - Instala paquetes adicionales si es necesario. Por ejemplo, para la navegación o para usar un tema oscuro:
  >     ```
  >     flutter pub add provider
  >     flutter pub add flutter_bloc
  >     flutter pub add shared_preferences
  >     ```
  
  > - **Project File Structure**
  >
  >   - La estructura básica de un proyecto Flutter es la siguiente:
  >     ```
  >     my_app/
  >     ├── android/                # Configuraciones específicas para Android
  >     ├── ios/                    # Configuraciones específicas para iOS
  >     ├── lib/                    # Carpeta principal de código fuente en Dart
  >     │   ├── assets/             # Archivos estáticos (imágenes, fuentes)
  >     │   ├── components/         # Componentes reutilizables
  >     │   ├── screens/            # Pantallas o vistas
  >     │   ├── main.dart           # Archivo principal
  >     │   └── theme/              # Configuración de temas (incluyendo tema oscuro)
  >     ├── pubspec.yaml            # Configuración de dependencias
  >     ├── .gitignore              # Archivo para ignorar archivos en git
  >     └── README.md               # Documentación del proyecto
  >     ```
  
</details>

<details>
  <summary>✅ User Roles</summary>
<ul>
  <li>Chefs 👨‍🍳👩‍🍳</li>
  <li>Students 🧑‍🎓👩‍🎓</li>
</ul>
</details>

---

<h3 id="sprint-1">👨‍🍳 Sprint 1 - Chef Module (Mobile)</h3>

<details>
  <summary>✅ Endpoint consumption to log in.</summary>
  <img src="https://github.com/user-attachments/assets/a9256054-7d2e-4eb5-9ff2-5588b2442363" alt="Log in">
</details>
<details>
  <summary>✅ Consumption of endpoint to view the profile</summary>
  <img src="https://github.com/user-attachments/assets/fd77abbd-6acf-4d82-b314-51bae4188335" alt="View the profile">
</details>

---

<h3 id="sprint-2">👩‍🎓 Sprint 2 - Student Module (Mobile)</h3>

<details>
  <summary>✅ Consumption of the endpoint to view the categories. </summary>
  <img src="https://github.com/user-attachments/assets/b1693111-8137-4208-a289-2ad3cff530c6" alt="View the categories.">
</details>
<details>
  <summary>✅ Endpoint consumption to display products by category. </summary>
  <ul>
    <li>Lunch Category </li>
    <img src="https://github.com/user-attachments/assets/ca920e3c-c373-4ea6-8758-df32db867562" alt="Lunch Category">
    <li>Category Beverages </li>
    <img src="https://github.com/user-attachments/assets/fd77f52c-e947-4fcd-b4bc-0f79df1ba437" alt="Category Beverages">
    <li>Category Snacks </li>
    <img src="https://github.com/user-attachments/assets/4751f582-d064-417d-b17e-4fa2dbe4c18c" alt="Category Snacks">
  </ul>
</details>

---



### 📲🤳 Release announcement coming soon

![Release Annoucement Preview](https://github.com/user-attachments/assets/29b393eb-f5ff-46cc-98c9-c74e63ea11f5)

