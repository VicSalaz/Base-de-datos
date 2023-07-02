
Use("CoursantDB")
//JSON SCHEMA DE VUELOS
db.CreateCollection("VUELOS",
	{
    	validator:
    	{
        	$jsonSchema:
        	{
            	bsonType: "object",
            	required: ["idvuelo", "destino_vuelo", "numero_vuelo","precio", "horario_vuelo"],
                properties: {
                    idvuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    destino_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
    	            numero_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    precio: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    horario_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
            	}
        	}
    	}
	}
)
//INSERTS EQUIPAJE_EXTRA
db.VUELOS.insertMany(
[
{idvuelo: "1004",destino_vuelo: "California",numero_vuelo: "633495915", precio: "1500", horario_vuelo: "23:00"}
{idvuelo: "1005",destino_vuelo: "Madrid",numero_vuelo: "314993423", precio: "1600", horario_vuelo: "21:00"}
{idvuelo: "1006",destino_vuelo: "Piura",numero_vuelo: "495436859", precio: "300", horario_vuelo: "14:00"}
{idvuelo: "1007",destino_vuelo: "Cusco",numero_vuelo: "191462636", precio: "500", horario_vuelo: "15:00"}
{idvuelo: "1008",destino_vuelo: "Huancayo",numero_vuelo: "087594560", precio: "300", horario_vuelo: "09:00"}
]
)
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.VUELOS.find()
 
 
//JSON SCHEMA DE Comparar_precios_vuelos
db.CreateCollection("Comparar_precios_vuelos",
	{
    	validator:
    	{
            $jsonSchema:
        	{
                bsonType: "object",
                required: ["idComp", "OrigenVuelo", "DestinoVuelo", "Precio"],
                properties: {
                    idComp: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    OrigenVuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y no es un campo obligatorio"
                	},
                    DestinoVuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    Precio: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
            	}
   	     }
    	}
	}
)
//INSERTS Comparar_precios_vuelos
db.Comparar_precios_vuelos.insertMany(
[
{idComp: "3001",OrigenVuelo: "Lima", DestinoVuelo: "California", precio: "1500"}
{idComp: "3002",OrigenVuelo: "Lima", DestinoVuelo: "Madrid", precio: "1600"}
{idComp: "3003",OrigenVuelo: "Lima", DestinoVuelo: "Piura", precio: "300"}
{idComp: "3004",OrigenVuelo: "Lima", DestinoVuelo: "Cusco", precio: "500"}
{idComp: "3005",OrigenVuelo: "Lima", DestinoVuelo: "Huancayo", precio: "300"}
]
)
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Comparar_precios_vuelos.find()
 
//JSON SCHEMA DE Subastas_asientos
db.CreateCollection("Subastas_asientos",
	{
    	validator:
    	{
            $jsonSchema:
        	{
                bsonType: "object",
                required: ["idSubasta", "nombres", "DNI", "destino_vuelo", "puja"],
                properties: {
                    idSubasta: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    nombres: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
         	       },
                    DNI: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    destino_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y no es un campo obligatorio"
                	},
                    puja: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
            	}
        	}
    	}
	}
)
//INSERTS Subastas_asientos
db.Subastas_asientos.insertMany(
[
{idSubasta: "2001",nombres: "Juan Perez", DNI: "45678909", destino_vuelo: "Madrid", puja: "3000"}
{idSubasta: "2002",nombres: "Emilia Casas", DNI: "76543212", destino_vuelo: "California", puja: "3500"}
{idSubasta: "2003",nombres: "Jorge Carbajal", DNI: "42689754", destino_vuelo: "Cusco", puja: "1000"}
{idSubasta: "2004",nombres: "Gabriel Muñoz", DNI: "70757845", destino_vuelo: "Ica", puja: "700"}
{idSubasta: "2005",nombres: "Fernanda Diaz", DNI: "77458961", destino_vuelo: "Tarapoto", puja: "900"}
]
)
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Subastas_asientos.find()
 
//JSON SCHEMA DE Registro_vuelos
db.CreateCollection("Registro_vuelos",
	{
    	validator:
    	{
            $jsonSchema:
        	{
                bsonType: "object",
                required: ["idRegiVuelo", "numero_vuelo", "nombres"],
                properties: {
                    idRegiVuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    numero_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    nombres: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
            	}
        	}
    	}
	}
)
//INSERTS Registro_vuelos
db.Registro_vuelos.insertMany(
[
{idRegiVuelo: "2001",numero_vuelo: "028754226",nombres: "Francisco Garcia"}
{idRegiVuelo: "2002",numero_vuelo: "028754221",nombres: "Gabriel Diaz"}
{idRegiVuelo: "2003",numero_vuelo: "028754233",nombres: "Paola Chavez"}
{idRegiVuelo: "2004",numero_vuelo: "028754216",nombres: "Liliana Vidales"}
{idRegiVuelo: "2005",numero_vuelo: "028754324",nombres: "Camilo Segura"}
]
)
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Registro_vuelos.find()
 
//JSON SCHEMA DE Reservas_Vuelo
db.CreateCollection("Reservas_Vuelo",
	{
    	validator:
    	{
            $jsonSchema:
        	{
                bsonType: "object",
                required: ["idReserv", "destino_vuelo","fechaida", "fecharegreso"],
                properties: {
                    idReserv: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    destino_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    fechaida: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                	},
                    fecharegreso: {
                        bsonType: "string",
                        description: "Valor debe ser string y no es un campo obligatorio"
                	},
            	}
        	}
    	}
	}
)
//INSERTS Reservas_Vuelo
db.Reservas_Vuelo.insertMany(
[
{idReserv: "2001",destino_vuelo: "Huancayo",fechaida: "2023-09-16",fecharegreso: "2023-09-21" }
{idReserv: "2002",destino_vuelo: "Madrid", fechaida: "2023-12-20",fecharegreso: NULL}
{idReserv: "2003",destino_vuelo: "Cusco", fechaida: "2023-10-9",fecharegreso: "2023-10-16"}
{idReserv: "2004",destino_vuelo: "California", fechaida: "2023-10-10",fecharegreso: NULL}
{idReserv: "2005",destino_vuelo: "Iquitos", fechaida: "2023-11-5",fecharegreso: "2023-11-19"}
]
)
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Reservas_Vuelo.find()



//Pasaje que tiene como origen "Lima"
db.Comparar_precios_vuelos.find({OrigenVuelo:"Lima"})


//Mostrar el precio de los pasajes mayores a 80
db.VUELOS.find({precio:{$gt: 50}})



//Muestra de la puja que estan entre 1000 y 3000
db.Subastas_asientos.find({puja:{$gte:1000,$lte:3000}})


//Mostrar vuelo con origen Lima y destino Madrid
db.Comparar_precios_vuelos.find({$and: [{"OrigenVuelo": "Lima"},{"DestinoVuelo": "Madrid"}]})

//Actualizar el precio de venta de vuelo a California
db.VUELOS.updateOne(
    {destino_vuelo: "California"},
    {
        $set:{
            "precio": 1100,
        }
    }
)
db.VUELOS.find()


//Incrementar el precio de la puja de subasta
db.Subastas_asientos.updateOne(
    {$inc: {puja: 100}}
)

//Borrar todo los datos de la tabla
db.Reservas_Vuelo.deleteMany({ })


//Cambiar el destino de un vuelo
db.VUELOS.updateOne({idvuelo:1004},{$set:{destino_vuelo:"Chicago"}})

//Cambiar la fecha de ida de una reserva de vuelo 
db.Reservas_Vuelo.updateOne({destino_vuelo: "Huancayo"}, {$set:{fechaida:"2023-09-10"}})

//Borrar los vuelos que tengan un precio menor a 400
db.VUELOS.deleteMany({precio: {$lt:500}})






//SCHEMA VALIDATION DE VUELOS
use('CoursantDB');

db.createCollection(
    "vuelos",
    {
        validator:
        {
            $jsonSchema:
            {
                bsonType: "object",
                required: ["idvuelo", "destino_vuelo", "numero_vuelo","precio", "horario_vuelo"],
                properties: {
                    idvuelo: {
                        bsonType: "int",
                        description: "Valor debe ser string y es un campo obligatorio"
                    },
                    destino_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                    },
                    numero_vuelo: {
                        bsonType: "string",
                        description: "Valor debe ser string y es un campo obligatorio"
                    },
                    precio: {
                        bsonType: "number",
                        description: "Valor debe ser string y es un campo obligatorio"
                    },
                    horario_vuelo: {
                        bsonType: "string",
                        pattern: "^([01]\\d|2[0-3]):([0-5]\\d):([0-5]\\d)$",
                        description: "Debe ingresar la hora del vuelo en formato HH:mm:ss"
                    },
                }
            }
        }
    }
)


//INSERTS VUELOS
db.vuelos.insertMany(
    [
    {idvuelo: 1004, destino_vuelo: "California", numero_vuelo: "633495915", precio: 1500.99, horario_vuelo: "23:15:00"},
    {idvuelo: 1005, destino_vuelo: "Madrid", numero_vuelo: "314993423", precio: 1600.50, horario_vuelo: "21:00:00"},
    {idvuelo: 1006, destino_vuelo: "Piura", numero_vuelo: "495436859", precio: 300, horario_vuelo: "14:50:00"},
    {idvuelo: 1007, destino_vuelo: "Cusco", numero_vuelo: "191462636", precio: 500, horario_vuelo: "15:40:00"},
    {idvuelo: 1008, destino_vuelo: "Huancayo", numero_vuelo: "087594560", precio: 399.90, horario_vuelo: "09:30:00"}
    ]
    );
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.vuelos.find()

//SCHEMA VALIDATION DE Comparar_precios_vuelos
db.createCollection(
    "Comparar_precios_vuelos",
    {
        validator:
        {
            $jsonSchema:
            {
                bsonType: "object",
                required: ["idComp", "OrigenVuelo", "DestinoVuelo", "Precio"],
                properties: {
                    idComp: {
                        bsonType: "int",
                        description: "Valor debe ser int y es un campo obligatorio"
                    },
                    OrigenVuelo: {
                        bsonType: "string",
                        description: "Debe ingresar el origen del vuelo"
                    },
                    DestinoVuelo: {
                        bsonType: "string",
                        description: "Debe ingresar el destino del vuelo"
                    },
                    Precio: {
                        bsonType: "number",
                        description: "Valor debe ser númerico para el precio del vuelo"
                    },
                }
            }
        }
    }
)
//INSERTS Comparar_precios_vuelos
db.Comparar_precios_vuelos.insertMany(
    [
    {idComp: 3001, OrigenVuelo: "Lima", DestinoVuelo: "California", Precio: 1500},
    {idComp: 3002, OrigenVuelo: "Lima", DestinoVuelo: "Madrid", Precio: 1600},
    {idComp: 3003, OrigenVuelo: "Lima", DestinoVuelo: "Piura", Precio: 299.90},
    {idComp: 3004, OrigenVuelo: "Lima", DestinoVuelo: "Cusco", Precio: 500},
    {idComp: 3005, OrigenVuelo: "Lima", DestinoVuelo: "Huancayo", Precio: 390.50}
    ]
    );

//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Comparar_precios_vuelos.find()

//SCHEMA VALIDATION DE Subastas_asientos
db.createCollection(
    "Subastas_asientos",
    {
        validator:
        {
            $jsonSchema:
            {
                bsonType: "object",
                required: ["idSubasta", "nombres", "DNI", "destino_vuelo", "puja"],
                properties: {
                    idSubasta: {
                        bsonType: "int",
                        description: "Valor debe ser int y es un campo obligatorio"
                    },
                    nombres: {
                        bsonType: "string",
                        description: "Debe ingresar el nombre del pasajero"
                    },
                    DNI: {
                        bsonType: "string",
                        description: "Debe ingresar el dni del usuario"
                    },
                    destino_vuelo: {
                        bsonType: "string",
                        description: "Debe ingresar el destino del asiento subastado"
                    },
                    puja: {
                        bsonType: "number",
                        description: "Valor debe ser númerico para la puja del vuelo"
                    }
                }
            }
        }
    }
)

//INSERTS Subastas_asientos
db.Subastas_asientos.insertMany(
    [
    {idSubasta: 2001,nombres: "Juan Perez", DNI: "45678909", destino_vuelo: "Madrid", puja: 3000},
    {idSubasta: 2002,nombres: "Emilia Casas", DNI: "76543212", destino_vuelo: "California", puja: 3500},
    {idSubasta: 2003,nombres: "Jorge Carbajal", DNI: "42689754", destino_vuelo: "Cusco", puja: 1000},
    {idSubasta: 2004,nombres: "Gabriel Muñoz", DNI: "70757845", destino_vuelo: "Ica", puja: 700},
    {idSubasta: 2005,nombres: "Fernanda Diaz", DNI: "77458961", destino_vuelo: "Tarapoto", puja: 900}
    ]
    )

//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Subastas_asientos.find()

//SCHEMA VALIDATION DE Registro_vuelos
db.createCollection(
    "Registro_vuelos",
    {
        validator:
        {
            $jsonSchema:
            {
                bsonType: "object",
                required: ["idRegiVuelo", "numero_vuelo", "nombres"],
                properties: {
                    idRegiVuelo: {
                        bsonType: "int",
                        description: "Valor debe ser int y es un campo obligatorio"
                    },
                    numero_vuelo: {
                        bsonType: "string",
                        description: "Debe ingresar el numero de vuelo del pasajero"
                    },
                    nombres: {
                        bsonType: "string",
                        description: "Debe ingresar el nombre del pasajero"
                    }
                }
            }
        }
    }
)

//INSERTS Registro_vuelos
db.Registro_vuelos.insertMany(
    [
    {idRegiVuelo: 2001,numero_vuelo: "028754226",nombres: "Francisco Garcia"},
    {idRegiVuelo: 2002,numero_vuelo: "028754221",nombres: "Gabriel Diaz"},
    {idRegiVuelo: 2003,numero_vuelo: "028754233",nombres: "Paola Chavez"},
    {idRegiVuelo: 2004,numero_vuelo: "028754216",nombres: "Liliana Vidales"},
    {idRegiVuelo: 2005,numero_vuelo: "028754324",nombres: "Camilo Segura"}
    ]
    )

//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Registro_vuelos.find()

//SCHEMA VALIDATION DE Reservas_Vuelo
db.createCollection(
    "Reservas_Vuelo",
    {
        validator:
        {
            $jsonSchema:
            {
                bsonType: "object",
                required: ["idReserv", "destino_vuelo","fechaida", "fecharegreso"],
                properties: {
                    idReserv: {
                        bsonType: "int",
                        description: "Valor debe ser int y es un campo obligatorio"
                    },
                    destino_vuelo: {
                        bsonType: "string",
                        description: "Debe ingresar el destino del vuelo"
                    },
                    fechaida: {
                        bsonType: "date",
                        description: "Debe ingresar la fecha de ida del vuelo"
                    },
                    fecharegreso: {
                        bsonType: ["date", "null"],
                        description: "Debe ingresar la fecha de regreso del vuelo"
                    },
                }
            }
        }
    }
)

//INSERTS Reservas_Vuelo
db.Reservas_Vuelo.insertMany(
[
{idReserv: 2001,destino_vuelo: "Huancayo",fechaida: new Date("2023-09-16"),fecharegreso: new Date("2023-09-21") },
{idReserv: 2002,destino_vuelo: "Madrid", fechaida: new Date("2023-12-20"),fecharegreso: null},
{idReserv: 2003,destino_vuelo: "Cusco", fechaida: new Date("2023-10-09"),fecharegreso: new Date("2023-10-16")},
{idReserv: 2004,destino_vuelo: "California", fechaida: new Date("2023-10-10"),fecharegreso: null},
{idReserv: 2005,destino_vuelo: "Iquitos", fechaida: new Date("2023-11-05"),fecharegreso: new Date("2023-11-19")}
]
)
//VERIFICACIÓN DE LOS DATOS INSERTADOS
db.Reservas_Vuelo.find()



//CONSULTAS MONGODB




//1. Pasaje que tiene como origen "Lima"
db.Comparar_precios_vuelos.find({OrigenVuelo: "Lima"})


//2. Mostrar el precio de los pasajes mayores a 500
db.vuelos.find({precio:{$gt: 500}})

//3. Muestra de la puja que estan entre 1000 y 4000
db.Subastas_asientos.find({puja:{$gte:1000,$lte:4000}})

//4. Mostrar vuelo con origen Lima y destino Madrid
db.Comparar_precios_vuelos.find({$and: [{OrigenVuelo: "Lima"},{DestinoVuelo: "Cusco"}]})

//5. Actualizar el precio de venta de vuelo a California
db.vuelos.updateOne(
    {destino_vuelo: "California"},
    {
        $set:{
            precio: 1100.99,
        }
    }
)
db.vuelos.find({destino_vuelo: "California"})
