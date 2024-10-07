const axios = require("axios");
const knex = require("knex")({
    client: 'mysql',
    connection: {
        server: 'localhost', // Change to 'host' if you meant to use it
        user: 'root',
        password: '',
        database: 'zoo'
    }
});

const readDataAndInsertIntoDB = () => {
    return new Promise((resolve, reject) => {
        axios.get("https://api.api-ninjas.com/v1/animals?name=")
            .then((result) => {
                const dataToBeInserted = result.data.map(column =>
                    ({ name: column.name }) // Assuming API returns objects with 'name' field
                );
                knex('apidata').insert(dataToBeInserted)
                    .then(() => {
                        knex.destroy();
                        resolve(1);
                    })
                    .catch((error) => {
                        reject(error); // Reject promise if there's an error
                    });
            })
            .catch((error) => {
                reject(error); // Reject promise if there's an error
            });
    });
};

readDataAndInsertIntoDB()
    .then((result) => {
        if (result === 1) {
            console.log("Data was successfully inserted");
        } else {
            console.log("There was an error");
        }
    })
    .catch((error) => {
        console.log("Error:", error);
    });
