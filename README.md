# flutter_project (Ask for care)


Ask For Care 
هو تطبيق لتنظيم العلاقة بين المختصين (الاطباء / العلاج الفيزيائي / الممرضين/عناية بالاطفال / العناية بكبار السن)
و القدرة على حجز مواعيد معهم و الرسائل مع وجود شات بوت حيث بامكانك اعطائه الاعراض التي تشعر بها و هو يدلك على الاطباء المناسبين لحالتك مع توقع المرض .


1- Flutter  :

top Libraries and tools used  :
 

*provider for state mangment
*getx for navigation and snackbar and defultdialoge and stream and localization(multi languges) . 
*firebase for notification (FCM)and massging(Firestore)
*Dio to communication with api
*Material (Stateless) for ui 
*screenutil for responsivity  .
*Google maps .
*Fluuter maps . 


to run it : 
flutter run (in terminal)

// you can use this email and password to login  :



Project Structure

After successful build, your application structure should look like this:

```
.
├── android                         - contains files and folders required for running the application on an Android operating system.
├── assets                          - contains all images and fonts of your application.
├── ios                             - contains files required by the application to run the dart code on iOS platforms.
├── lib                             - Most important folder in the project, used to write most of the Dart code.
    ├── main.dart                   - starting point of the application
    ├── core
    │   ├── app_export.dart         - contains commonly used file imports 
    │   ├── constants               - contains all constants classes
    │   ├── errors                  - contains error handling classes                  
    │   ├── network                 - contains network related classes
    │   └── utils                   - contains common files and utilities of project
    ├── data
    │   ├── apiClient               - contains API calling methods 
    │   ├── models                  - contains request/response models 
    │   └── repository              - network repository
    ├── localization                - contains localization classes
    ├── presentation                - contains all screens and screen controllers
    │   └── screens                 - contains all screens
    ├── routes                      - contains all the routes of application
    └── theme                       - contains app theme and decoration classes
    └── widgets                     - contains all custom widget classes
```
------------------------------------------------------------------------------

2- Machine Learning :

* python - tenserflow (desion tree , random forest , knn) to predict the deasese. (its connect with restfull api)

* google dialoge-flow (to understand the natural languge) . (arabic and english chatbot) . 

* recommendation system algorithm . 
--------------------------------------------------------------------------------

3- backend :

* python (Django) with restfull api . 

github url for backend : 

Follow this to run backend on your machine:
    1. clone the repo
    2. install virtualenv globally ```pip install virtualenv```
    3. cd to backend ```cd backend```
    4. create and activate venv: 
        ```
        #create your venv
        virtualenv venv
          
        #activate your venv
        venv\Scripts\activate
        ```
    5. install requirements:
        ```pip install -r requirements.txt``` 
    6. install mysql-python ```pip install PATH_TO/mysqlclient‑1.3.13‑cp27‑cp27m‑win_amd64.whl```
    7. make a copy for you local environment by making a copy of `local.temp.py` and rename it to `local.py`,
    change local.py settings to configurations you made during MYSQL server installation. 
    Note: don't forget to create your database named `askcaredb-local` using workbench in your local connection.
    
    8. create migrations per app models using: `python manage.py makemigrations app-name`, you need to do
    that for all apps in core
    9. migrate database models using: `python manage.py migrate`.
    10. create superuser for admin: `python manage.py createsuperuser --email admin@askcare.com --username admin`, and create password for it e.g. `askcare`.
    11. TADAAAA! now we can run our server:
        ```
        python manage.py runserver
        ```
        to run development / production 
        ```
        python manage.py runserver --settings=settings.development
        ```
        Performing system checks...
    
        System check identified no issues (0 silenced).
        Django version 2.0.3, using settings 'settings.local'
        Starting development server at http://127.0.0.1:8000/
        Quit the server with CTRL-BREAK. 
        ```


-----------------------------------------------
4- Jawwal services :

* send sms (to confirm cancel appoiment or when add new appoimnet or when done appoiment )
*Jawwal pay 

-------------------------------------------------

5- aws services for backend :
url : http://askcare-env.eba-8e7fmuzm.eu-central-1.elasticbeanstalk.com/

  
  
  
 some screenshotes for application : 
    
![chrome_hgzyXuW4UY](https://user-images.githubusercontent.com/92048282/213728215-c3dd8198-7e71-4c8c-9190-88e380ab29cc.png)
![chrome_jKJVIKjw7O](https://user-images.githubusercontent.com/92048282/213728221-1bf2fa57-6004-459c-b43b-846d797875ce.png)
![chrome_n0HYOpW1G1](https://user-images.githubusercontent.com/92048282/213728223-4d108182-c089-4133-a3ae-2588b0178b2d.png)
![chrome_nvxqZrjHDW](https://user-images.githubusercontent.com/92048282/213728230-7a04fbc7-2900-4fde-b90d-b2ab24c4e25f.png)
![chrome_nZrA0sGTOJ](https://user-images.githubusercontent.com/92048282/213728231-42334809-d3dc-4ec0-8dbe-ba5330f2826d.png)
![chrome_pPWiPNn58v](https://user-images.githubusercontent.com/92048282/213728254-012b567f-da20-4585-8050-77498fdd112e.png)
![chrome_T448Kip0U6](https://user-images.githubusercontent.com/92048282/213728260-ce6dde30-7773-44ae-884f-e13c918979b6.png)
![chrome_v0inCtraIA](https://user-images.githubusercontent.com/92048282/213728274-ce151ecc-ed1a-434e-8ca3-5ff02e5f7f79.png)
![chrome_vgVvEA9t1r](https://user-images.githubusercontent.com/92048282/213728291-4338bb82-6bc3-4765-9ad1-116995a21c60.png)
![chrome_wr9JivZDFG](https://user-images.githubusercontent.com/92048282/213728303-2a102216-9bb2-4fdd-9c09-9cfeca00612c.png)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٦١٩](https://user-images.githubusercontent.com/92048282/213728307-f52cf4d2-e305-44c2-b018-4b4431ecaee1.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٦٥٢](https://user-images.githubusercontent.com/92048282/213728327-74907b68-ca75-43ce-9247-1d14c05a2ff9.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٧٠٩](https://user-images.githubusercontent.com/92048282/213728372-3d1c5b32-9c83-4922-9d45-3611bd7a3875.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٧١٧](https://user-images.githubusercontent.com/92048282/213728391-99d4cda3-99d3-4b63-a37f-ab1c747121a5.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٧٢٦](https://user-images.githubusercontent.com/92048282/213728403-83327f38-b23a-4a4b-b1d0-bceb3a94b12c.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨٠٦](https://user-images.githubusercontent.com/92048282/213728413-9428570d-c3b8-4e8d-850b-ff6316296633.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨١٢](https://user-images.githubusercontent.com/92048282/213728431-dbb0c78a-02ff-4a08-a7f4-bda7840cce1e.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨١٩](https://user-images.githubusercontent.com/92048282/213728455-5461f0a7-1851-453b-a349-5eb00c03c58d.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨٢٥](https://user-images.githubusercontent.com/92048282/213728489-1fb1b298-66a7-44bb-a2fe-e71b118b42f2.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨٣٤](https://user-images.githubusercontent.com/92048282/213728530-7df4573c-1a74-420e-82d6-fc4596b1d56c.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨٤٣](https://user-images.githubusercontent.com/92048282/213728572-b45115d0-32e0-42f7-9018-b442f4f28e25.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨٥٠](https://user-images.githubusercontent.com/92048282/213728606-a0e709e7-847a-4429-8dcb-e0a1969e178f.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٨٥٩](https://user-images.githubusercontent.com/92048282/213728623-d4dbf0b7-bb13-4ee6-9839-005139d51379.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٩٠٦](https://user-images.githubusercontent.com/92048282/213728688-a38eb326-12b1-4b12-a73a-003db6b88d70.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٩١٤](https://user-images.githubusercontent.com/92048282/213728705-cb307705-364e-432b-b7f9-2a2f46338b58.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٩١٩](https://user-images.githubusercontent.com/92048282/213728719-fb1fcd38-0a04-491d-a8e3-7483078b157b.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٩٥٥](https://user-images.githubusercontent.com/92048282/213728728-84286909-5be8-426f-848f-a886a60fc03b.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٣٩٥٩](https://user-images.githubusercontent.com/92048282/213728742-e63e5fb3-53fd-4bfe-b7b7-02b4c10e0637.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٤٠١٤](https://user-images.githubusercontent.com/92048282/213728764-70dc931a-d069-40fa-b73b-6070dd48fc17.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٤٠٢٤](https://user-images.githubusercontent.com/92048282/213728786-e8428a24-01e2-4f9f-87a7-79a313c369c1.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٤٠٤٨](https://user-images.githubusercontent.com/92048282/213728801-779edfaf-0ef1-4d08-9fa4-c6b105e39c6b.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٤٤٠٦](https://user-images.githubusercontent.com/92048282/213728820-0ccae314-a47b-43d0-92be-9a317cf1867b.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٤٤١٩](https://user-images.githubusercontent.com/92048282/213728866-1977f8e5-1164-415c-9661-d52ff47c7e2b.jpg)
![Screenshot_٢٠٢٣٠١٢٠-١٥٤٧٣٧](https://user-images.githubusercontent.com/92048282/213728900-9c1b6721-068c-4fab-9951-196bf71ef403.jpg)
![chrome_89cUiv6isr](https://user-images.githubusercontent.com/92048282/213728944-0db56a94-1049-425d-90e3-65535682b4b0.png)
![chrome_dHM2FuXzmI](https://user-images.githubusercontent.com/92048282/213728955-c19e2056-4eaf-4ece-be11-7c10c24d0523.png)
![chrome_FCuIHkDa2F](https://user-images.githubusercontent.com/92048282/213728963-04a158da-a012-4b48-9f9d-48cceaf221d8.png)
