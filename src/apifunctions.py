#FUNCION PARA OBTENER DATOS DE LA API DE PROCYCLINGSTATS

def getStages(maxEtapa):
    stage_climbs=[]
    for stages in range(1,maxEtapa+1):    
        stage = Stage("race/tour-de-france/2023/stage-{}".format(stages))
        climbs = stage.climbs()
        for x in climbs:
            x["stage_id"] = stages
        stage_climbs.append(climbs)

    # Convertir la lista anidada en una lista plana de diccionarios
    flat_data = [item for sublist in stage_climbs for item in sublist]

    # Crear un DataFrame a partir de la lista de diccionarios
    stages = pd.DataFrame(flat_data)

    # Mostrar el DataFrame
    return stages
