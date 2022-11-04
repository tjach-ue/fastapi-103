1. Stwórz konto na https://signup.heroku.com/
2. Aplikacje/kontenery nazywają się tutaj "dynos". Więc na początku trzeba stworzyć nową aplikację:
![](create-app.png)
3. Potem robimy wszystko jak po sznurku:
![](img.png)
4. Należy pamiętać o pliku requirements.txt, a całość wysyłamy za pomocą GITa:
``` 
git push heroku master
```
5. Aby Heroku wiedział co ma zrobić, należy przygotować tzw. Procfile. Jest to plik wskazujący co i jak należy uruchomić:
```
web: uvicorn main:app --host=0.0.0.0 --port=${PORT:-5000}
```
6. Po pushu wszystko działa:
![img_1.png](img_1.png)
![img_2.png](img_2.png)
7. Z racji tego, że Heroku jest darmowe, to nasza applikacja zostanie ubita po jakimś czasie nieaktywności. Da się to obejść: 
https://towardsdatascience.com/how-to-deploy-your-fastapi-app-on-heroku-for-free-8d4271a4ab9