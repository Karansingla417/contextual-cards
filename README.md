Question:

Develop a standalone view, that displays a list of Contextual Cards
A Contextual Card is used to refer to a view that is rendered using json from an API
These views are dynamic and their properties like images, color, texts, buttons (CTAs) etc. can be changed from backend at anytime.
This view should work completely independently of everything else, such that, we can add this to view to any view/screen and it should work. (Plug-and-Play component)
Your app should render contextual cards in a list based on the API response that you get from this API
The design specifications for the different design types can be referenced from design specified here. (To access and download the assets please login into Figma)
The design linked is only for reference for different types of design types of cards. Actual response from API will render different results.


Solution:

1. MVVC Architecture Implementation: The application adheres to the Model-View-ViewModel (MVVC) architectural pattern. This separation allows for clear separation of concerns, with the model representing the data, the view representing the UI components, and the view model acting as an intermediary to handle logic and data manipulation.

2. Asynchronous HTTP Requests: All network communication within the app is performed asynchronously. This ensures that the user interface remains responsive while data is being fetched from remote servers. Asynchronous calls prevent blocking the main thread, enhancing overall performance and user experience.

3. Server-Fetched Images/Cards with AsyncImage: Images and other card-like components displayed in the app are fetched from a server. To handle the asynchronous loading of these images, the app utilizes the AsyncImage component, which efficiently fetches and displays images without blocking the UI thread.

4. Data Persistence with UserDefaults: UserDefaults is employed for storing and retrieving user-related data persistently. This lightweight persistence solution is suitable for storing small amounts of data such as user preferences, settings, or simple app state information.

5. Integration of Custom Fonts: Custom fonts are integrated into the project to enhance the visual appeal and branding of the application. These fonts are selected to align with the overall design aesthetic and branding guidelines, providing a unique and cohesive user experience.

6. Outsourced Component Integration: Certain components or functionalities within the app are outsourced, meaning they are developed or provided by third-party libraries or services. This approach can streamline development, leverage existing solutions, and enhance the app's capabilities without reinventing the wheel.

7. Custom ScrollView with Refresh Functionality: The app utilizes a custom scroll view implementation to support refresh functionality. Since the native scroll view does not inherently support pull-to-refresh behavior, a custom solution is implemented to enable users to refresh content by pulling down on the screen. This enhances the app's usability and provides a familiar interaction pattern for users accustomed to this gesture in other apps.

<img width="320" alt="image1" src="https://github.com/Karansingla417/fam_assignment/assets/92073149/7ad4a08e-97e9-4f4e-b8ac-c1e312ae9954">


<img width="325" alt="iamge2" src="https://github.com/Karansingla417/fam_assignment/assets/92073149/7bd6578f-8d65-4187-8cc1-9ca58a6c3463">

