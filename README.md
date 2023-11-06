# La_Grande_Boucle_Project_3: 

![pirata](https://github.com/luisgh87/w4-project_ETL/assets/116723919/3a81efa0-b9fb-4215-a79d-5fb3e8be0cbb)


## Objetivos

* Crear un database con datos extraídos de la Red con el sistema ETL.
* Usar 3 fuentes diferentes de información y utiliar 2 técnicas de las aprendidas durante el bootcamp (Descatgar un `.csv`, API, web scrapping...).
* Limpiar los datos almacenados mediante métodos de data cleansing.
* Insertar la información en las tablas creadas en MySQL y establecer las relaciones entre dichas tablas para hacer el database funcional.
* Analizar los datos recabados y sacar conclusiones.


## Estructura:

El repositorio se va a organizar en diferentes carpetas que contienen los siguientes archivos:

* Data: Archivos .csv con los datos recolectados y su pertinente limpieza optimiyación para su uso.
* Notebooks: Archivos .ipnyb en los que se usan diversas técnicas para la curación de dichos datos y la creación del database con Python.
* Images: Archivos .png para la presentación del proyecto (queries, diagrama, gráficas).
* SQL: Queries creadas para la demostración de la operatividad del database.
* .Gitignore: Archivos que no se mostraran en el GitHub personal.


## Proceso:

- A) Find a dataset to start you work! A great place to start looking would be [Awesome Public Data Sets](https://github.com/awesomedata/awesome-public-datasets) and [Kaggle Data Sets](https://www.kaggle.com/datasets).
  
- B) Clean and wrangle your dataset, prepare the data for your needs and intentions.

- C) Enrich the database with external data, you have to choose at least one of the following:
  - Get data from an `API`.
    - _Note:_ The API you use may require authentication via token or oAuth(remember to hide it in a .env file and include it in the `.gitignore`).
  - Do web scraping with python `beautifulsoup` or `selenium`module.
  
- D) The data you bring in to enrich the dataset must be related to it and complement it! Figure out how it fits together and how you prepare the data of both sources for your report. Some suggestions on how you could achieve this:
  - You have a dataset. Now you can use an API using the data of a column and create a new one with valuable info of your response for each row.
  - Scrapping a website and creating a new dataset. Then linking both datasets somehow. Maybe in the visualization.
  - Merging two datasets is complicated: you would need at least the same column with the same data in both. Don't overthink this stage. You can establish the relationship of both sources of data through visualization. 
  
- E) Create some reports containing valuable data from the dataset + enrichment. Some of the things you may do are:
  - Simply sumarize the data and do some basic statistics \(`mean`, `max`, `min`, `std`, etc.).
  - Do domain based statistics or data aggregations using `groupby()` .

  - Go nuts with the investigation. 

- F) The finished **report** must be a **very pretty** jupyter notebook, with text, clean code, meaningful outputs... Try telling a story with your data, that is, conduct us (the readers) through your findings and lead us into your conclusions.
  - _Note:_ The report jupyter **must** be separate from the code for cleaning, acquiring, processing data, etc. These may be in other jupyters or in `.py` modules. _Be not afraid to modulate 🎶_

## Summing up

You will be working with both jupyter notebooks and python scripts. The goals of this project are:

1. To **enrich** a given dataset, either using API's or web-scrapping

For this first goal, you can either make calls on your cleaned dataset and add new columns to it, or you can do web-scrapping to generate a new dataset. Then, you'll have to plot graphs that show the relation between the data within the dataset (downloaded and enriched with API calls) or between the two datasets (the downloaded and the scrapped).

2. To create **executable** python files. 

E.g.: you tested your cleaning functions on your jupyter notebook. Now that they work, you take them to your `cleaning.py` file. Remember that you'll have to call those functions as well for them to be executed:

```python
def sum(a, b) #defining
  return a+b

sum(3, 4) #calling
```

You should be able to run:

```bash
python3 cleaning.py
```
on your terminal so that it'll prompt you to enter a dataset to download. Then the code within your file will **download** it, **clean** it and **export** it.

After that's done, the rest of your code: enrichment and visualization can be told on jupyter notebooks.

So, basically, your repo structure should look something like:

```bash
1-src(folder containing downloading-and-cleaning.py #executable)
2-enriching-and-cleaning.ipynb
3-visualizing.ipynb
```
However, even though the executable file will only be the `cleaning.py`, that doesn't mean that there are no more `files.py`. All of the functions that you use for enriching the datset (api calls, web-scrapping, cleaning the second dataset, etc) should also be stored in another `file.py`. Eg.:

```bash
4-api.py #not necessarily executable but can be
5-scrapping.py
6-other-functions-you-can-think-of.py
```

## Super Ultra Mega Blaster Tips

* **Choose the data sources ASAP** and try to **stick to the plan**. Don't switch datasets/API's/webs halfway. 

* **Examine the data**.

* **Break the project down into different steps** - A hundred simple tasks are` better than a single complicated one

* **Use the tools in your tool kit** - your knowledge of intermediate Python as well as some of the things you've learned in the bootcamp. This is a great way to start tying everything you've learned together!

* **Work through the lessons in class** & ask questions when you need to! 

* Think about adding relevant code to your project each day, instead of, you know... _procrastinating_.

* **Commit early, commit often**, don’t be afraid of doing something incorrectly because you can always roll back to a previous version. Name your commits well.

* **Consult documentation and resources provided** to better understand the tools you are using and how to accomplish what you want. GIYF.

* **Have fun! Never give up! Be proud of your work!**

## Useful Resources

* [Python Functional Programming How To Documentation](https://docs.python.org/3.7/howto/functional.html)
* [Python List Comprehensions Documentation](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions)
* [Python Errors and Exceptions Documentation](https://docs.python.org/3/tutorial/errors.html)
* [StackOverflow String Operation Questions](https://stackoverflow.com/questions/tagged/string+python)
