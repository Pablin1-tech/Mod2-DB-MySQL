--Prueba de cliente duplicado

--SELECT
    --(SELECT nombre
    --FROM medicinas
    --WHERE id = clasificacion_medicinas.id_medicina) AS medicina_comercial,

    --(SELECT precio
    --FROM medicinas
    --WHERE id = clasificacion_medicinas.id_medicina) AS precio_comercial,

    --(SELECT nombre
    --FROM medicinas
    --WHERE id = clasificacion_medicinas.alternativa) AS medicina_generica,

    --(SELECT precio
    --FROM medicinas
    --WHERE id = clasificacion_medicinas.alternativa) AS precio_generico
--FROM clasificacion_medicinas;

--SELECT
    --cm.id_medicina AS Comercial,

    --(SELECT nombre
    --FROM medicinas
    --WHERE id = cm.id_medicina) AS medicina_comercial,

    --(SELECT precio
    --FROM medicinas
    --WHERE id = cm.id_medicina) AS precio_comercial,

    --cm.alternativa AS Generica,

    --(SELECT nombre
    --FROM medicinas
    --WHERE id = cm.alternativa) AS medicina_generica,

    --(SELECT precio
    --FROM medicinas
    --WHERE id = cm.alternativa) AS precio_generico,

    --(SELECT precio
    --FROM medicinas
    --WHERE id = cm.id_medicina)
    -
    --(SELECT precio
    --FROM medicinas
    --WHERE id = cm.alternativa) AS diferencia_precio

--FROM clasificacion_medicinas cm;