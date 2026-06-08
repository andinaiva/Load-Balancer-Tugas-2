const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", async (req, res) => {

    const delay = parseInt(req.query.delay) || 0;

    if (delay > 0) {
        await new Promise(resolve =>
            setTimeout(resolve, delay)
        );
    }

    res.json({
        server_id: process.env.SERVER_ID,
        server_name: process.env.SERVER_NAME,
        algorithm: process.env.LOAD_BALANCER_ALGORITHM,
        layer: process.env.LOAD_BALANCER_LAYER,
        status: "ACTIVE"
    });
});

app.listen(PORT, () => {
    console.log(`${process.env.SERVER_NAME} berjalan di port ${PORT}`);
});