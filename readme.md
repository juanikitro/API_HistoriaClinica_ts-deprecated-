# Run:
1. Install Docker
2. Install Docker Compose
3. run `docker compose up --build`

# Try:
GET localhost/v1/auth 
Request JSON body:
```
{
    "user": "D3f4ultUs3r",
    "password": "D3f4ultP4ssw0rd"
}
```
Response:
```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiRDNmNHVsdFVzM3IiLCJpYXQiOjE2OTA0ODU4MDAsImV4cCI6MTY5MzA3NzgwMH0.JTARs0nb605jc5RBtVCxhSqhjBww7eQ2HlCnaQ9tKus
```

GET localhost/v1/person bearer-token eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJEM2Y0dWx0VXMzciIsImV4cCI6MTY5MDQ4OTE1MH0.37OzU6h0gomgu635vZaOaA4nhD73cUaZbjSMDiAOuJ0
Request JSON body
```
{
    "document_type":"DNI",
    "document_number": "37057692",
    "gender": "F"
}
```
Response (unfinished)
```
{
    "person": {
        "document_number": "37057692",
        "document_type": "DNI",
        "gender": "F",
        "persCodigo": "145132"
    },
    "indicators": {
        "substanceUse": {
            "value": false,
            "lastTurn": null,
            "turnCodigo": null
        },
        "mentalProblems": {
            "value": false,
            "types": null
        },
        "recurrentOrChronicSickness": {
            "value": "ELIAS"
        },
        "catastrophicSickness": {
            "value": "ELIAS"
        },
        "disability": {
            "value": "ELIAS",
            "type": "ELIAS"
        },
        "medicalControls": {
            "quantity": 57,
            "lastTurn": "2023-04-17T09:39:50.637Z",
            "turnCodigo": "94201762"
        },
        "therapeuticTreatment": {
            "value": "ELIAS",
            "type": "ELIAS"
        },
        "medicalCenters": [
            {
                "name": "CAP DRA. MARTA ANTONIAZZI",
                "lastTurn": "2023-04-17T00:00:00.000Z",
                "turnCodigo": "94201762"
            },
            {
                "name": "CAP SAN MIGUEL OESTE",
                "lastTurn": "2023-02-14T00:00:00.000Z",
                "turnCodigo": "75266969"
            },
            {
                "name": "CAP DR. LUIS SUÁREZ PARÍS",
                "lastTurn": "2022-11-25T00:00:00.000Z",
                "turnCodigo": "55173838"
            },
            {
                "name": "HOSPITAL MUNICIPAL DR. RAUL LARCADE",
                "lastTurn": "2022-11-04T00:00:00.000Z",
                "turnCodigo": "50334709"
            },
            {
                "name": "CAP DR. ALBERTO SABÍN",
                "lastTurn": "2022-10-17T00:00:00.000Z",
                "turnCodigo": "47016589"
            },
            {
                "name": "HOSPITAL SANTA MARIA",
                "lastTurn": "2022-05-19T00:00:00.000Z",
                "turnCodigo": "20770467"
            },
            {
                "name": "HOSPITAL OFTALMOLÓGICO MONSEÑOR BARBICH",
                "lastTurn": "2020-11-24T00:00:00.000Z",
                "turnCodigo": "8408057"
            },
            {
                "name": "CAP 20 DE JULIO ",
                "lastTurn": "2020-01-20T00:00:00.000Z",
                "turnCodigo": "8023655"
            }
        ],
        "turns": [
            {
                "date": "2023-04-17T09:39:50.637Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2023-04-17T00:00:00.000Z",
                "turnCodigo": "94201762"
            },
            {
                "date": "2023-02-14T10:45:03.857Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2023-02-14T00:00:00.000Z",
                "turnCodigo": "75266969"
            },
            {
                "date": "2023-01-06T11:07:32.637Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2023-01-20T00:00:00.000Z",
                "turnCodigo": "65106366"
            },
            {
                "date": "2022-11-25T12:51:21.863Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-11-25T00:00:00.000Z",
                "turnCodigo": "55173838"
            },
            {
                "date": "2022-11-18T11:57:32.817Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-11-29T00:00:00.000Z",
                "turnCodigo": "53345928"
            },
            {
                "date": "2022-11-04T22:42:07.927Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-11-04T00:00:00.000Z",
                "turnCodigo": "50334709"
            },
            {
                "date": "2022-11-04T10:43:59.767Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-11-04T00:00:00.000Z",
                "turnCodigo": "50332418"
            },
            {
                "date": "2022-11-04T10:43:32.920Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-11-04T00:00:00.000Z",
                "turnCodigo": "50332414"
            },
            {
                "date": "2022-10-30T00:21:29.930Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-30T00:00:00.000Z",
                "turnCodigo": "50312049"
            },
            {
                "date": "2022-10-26T11:21:27.957Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-26T00:00:00.000Z",
                "turnCodigo": "48759699"
            },
            {
                "date": "2022-10-26T10:00:45.967Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-26T00:00:00.000Z",
                "turnCodigo": "48759329"
            },
            {
                "date": "2022-10-26T09:36:31.983Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-26T00:00:00.000Z",
                "turnCodigo": "48759232"
            },
            {
                "date": "2022-10-26T09:36:11.140Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-26T00:00:00.000Z",
                "turnCodigo": "48759230"
            },
            {
                "date": "2022-10-17T20:48:14.553Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-17T00:00:00.000Z",
                "turnCodigo": "47193980"
            },
            {
                "date": "2022-10-19T10:25:53.460Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-19T00:00:00.000Z",
                "turnCodigo": "47031301"
            },
            {
                "date": "2022-10-17T12:00:50.847Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-17T00:00:00.000Z",
                "turnCodigo": "47016589"
            },
            {
                "date": "2022-10-04T16:11:46.770Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-04T00:00:00.000Z",
                "turnCodigo": "44144080"
            },
            {
                "date": "2022-10-04T13:05:55.303Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-10-04T00:00:00.000Z",
                "turnCodigo": "43985912"
            },
            {
                "date": "2022-09-27T13:26:49.293Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-09-28T00:00:00.000Z",
                "turnCodigo": "42520378"
            },
            {
                "date": "2022-08-31T14:37:06.507Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-08-31T00:00:00.000Z",
                "turnCodigo": "37121516"
            },
            {
                "date": "2022-08-31T14:15:48.677Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-08-31T00:00:00.000Z",
                "turnCodigo": "36957453"
            },
            {
                "date": "2022-08-09T09:06:21.740Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-08-10T00:00:00.000Z",
                "turnCodigo": "33070925"
            },
            {
                "date": "2022-06-28T11:56:36.430Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-07-06T00:00:00.000Z",
                "turnCodigo": "25353894"
            },
            {
                "date": "2022-06-22T10:28:09.820Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-06-22T00:00:00.000Z",
                "turnCodigo": "24289552"
            },
            {
                "date": "2022-06-22T10:49:34.130Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-08-01T00:00:00.000Z",
                "turnCodigo": "24288561"
            },
            {
                "date": "2022-06-02T22:07:26.363Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-06-02T00:00:00.000Z",
                "turnCodigo": "21812908"
            },
            {
                "date": "2022-05-22T17:42:56.917Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-05-22T00:00:00.000Z",
                "turnCodigo": "20797055"
            },
            {
                "date": "2022-05-17T08:52:01.323Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-05-19T00:00:00.000Z",
                "turnCodigo": "20770467"
            },
            {
                "date": "2022-05-17T08:28:34.880Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-05-17T00:00:00.000Z",
                "turnCodigo": "20770299"
            },
            {
                "date": "2022-05-09T09:12:08.890Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-05-09T00:00:00.000Z",
                "turnCodigo": "20719711"
            },
            {
                "date": "2022-05-10T08:30:57.763Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-05-10T00:00:00.000Z",
                "turnCodigo": "20697488"
            },
            {
                "date": "2022-05-04T09:40:43.053Z",
                "specialty": null,
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-05-09T00:00:00.000Z",
                "turnCodigo": "20696031"
            },
            {
                "date": "2022-05-04T09:31:28.230Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-05-11T00:00:00.000Z",
                "turnCodigo": "20152915"
            },
            {
                "date": "2022-04-18T09:35:16.587Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-05-04T00:00:00.000Z",
                "turnCodigo": "20152884"
            },
            {
                "date": "2022-03-21T21:09:09.977Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-03-21T00:00:00.000Z",
                "turnCodigo": "17469957"
            },
            {
                "date": "2022-03-21T20:43:33.453Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-03-21T00:00:00.000Z",
                "turnCodigo": "17469934"
            },
            {
                "date": "2022-03-17T22:41:20.403Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-03-17T00:00:00.000Z",
                "turnCodigo": "16767305"
            },
            {
                "date": "2022-03-16T22:09:11.997Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-03-16T00:00:00.000Z",
                "turnCodigo": "16759397"
            },
            {
                "date": "2022-01-27T14:34:54.227Z",
                "specialty": null,
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-02-09T00:00:00.000Z",
                "turnCodigo": "12563834"
            },
            {
                "date": "2022-01-27T13:48:07.257Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2022-02-04T00:00:00.000Z",
                "turnCodigo": "12404598"
            },
            {
                "date": "2022-01-19T14:43:23.710Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-01-19T00:00:00.000Z",
                "turnCodigo": "12349259"
            },
            {
                "date": "2022-01-19T13:41:10.280Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-01-27T00:00:00.000Z",
                "turnCodigo": "12142609"
            },
            {
                "date": "2022-01-02T13:21:01.473Z",
                "specialty": null,
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2022-01-02T00:00:00.000Z",
                "turnCodigo": "11534281"
            },
            {
                "date": "2020-05-09T00:58:49.053Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-05-09T00:00:00.000Z",
                "turnCodigo": "10562093"
            },
            {
                "date": "2019-11-16T12:33:28.947Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-11-16T00:00:00.000Z",
                "turnCodigo": "10515799"
            },
            {
                "date": "2019-03-02T14:56:38.300Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-03-02T00:00:00.000Z",
                "turnCodigo": "10346928"
            },
            {
                "date": "2019-11-15T18:41:52.270Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-11-15T00:00:00.000Z",
                "turnCodigo": "10291579"
            },
            {
                "date": "2020-05-08T19:55:41.430Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-05-08T00:00:00.000Z",
                "turnCodigo": "10284255"
            },
            {
                "date": "2019-05-24T16:35:54.740Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-05-24T00:00:00.000Z",
                "turnCodigo": "9839634"
            },
            {
                "date": "2020-05-08T23:14:03.480Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-05-08T00:00:00.000Z",
                "turnCodigo": "9816695"
            },
            {
                "date": "2019-10-03T09:38:15.530Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-10-03T00:00:00.000Z",
                "turnCodigo": "9592535"
            },
            {
                "date": "2019-08-28T00:08:06.853Z",
                "specialty": "TURNOS",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-08-28T00:00:00.000Z",
                "turnCodigo": "8795737"
            },
            {
                "date": "2019-11-07T15:05:22.257Z",
                "specialty": "LABORATORIO",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2019-11-26T00:00:00.000Z",
                "turnCodigo": "8597702"
            },
            {
                "date": "2018-02-28T09:35:11.067Z",
                "specialty": "LABORATORIO",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2018-03-06T00:00:00.000Z",
                "turnCodigo": "8534848"
            },
            {
                "date": "2020-11-24T14:19:47.090Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-11-24T00:00:00.000Z",
                "turnCodigo": "8408057"
            },
            {
                "date": "2019-08-27T23:20:04.000Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-08-27T00:00:00.000Z",
                "turnCodigo": "8110531"
            },
            {
                "date": "2019-08-27T17:35:14.207Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-08-27T00:00:00.000Z",
                "turnCodigo": "8110502"
            },
            {
                "date": "2020-01-07T10:06:53.323Z",
                "specialty": "LABORATORIO",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-01-20T00:00:00.000Z",
                "turnCodigo": "8023655"
            },
            {
                "date": "2019-11-25T20:36:10.770Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-11-25T00:00:00.000Z",
                "turnCodigo": "7998675"
            },
            {
                "date": "2021-07-19T18:44:10.770Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2021-07-19T00:00:00.000Z",
                "turnCodigo": "7992906"
            },
            {
                "date": "2021-05-31T14:12:51.037Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2021-05-31T00:00:00.000Z",
                "turnCodigo": "7990858"
            },
            {
                "date": "2020-01-20T11:52:55.493Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-01-20T00:00:00.000Z",
                "turnCodigo": "7930547"
            },
            {
                "date": "2019-08-26T15:34:58.430Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-08-26T00:00:00.000Z",
                "turnCodigo": "7854630"
            },
            {
                "date": "2019-11-24T01:58:18.537Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-11-24T00:00:00.000Z",
                "turnCodigo": "7426064"
            },
            {
                "date": "2019-06-18T14:34:37.707Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2019-07-23T00:00:00.000Z",
                "turnCodigo": "7158507"
            },
            {
                "date": "2018-04-03T08:34:56.917Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2018-04-03T00:00:00.000Z",
                "turnCodigo": "7155578"
            },
            {
                "date": "2018-09-14T15:01:01.790Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2018-09-17T00:00:00.000Z",
                "turnCodigo": "7146348"
            },
            {
                "date": "2020-01-09T13:17:18.130Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2020-01-09T00:00:00.000Z",
                "turnCodigo": "7145898"
            },
            {
                "date": "2019-08-26T15:34:48.850Z",
                "specialty": "UNICA",
                "attend": true,
                "rescheduled": false,
                "rescheduledDate": "2019-08-26T00:00:00.000Z",
                "turnCodigo": "7138804"
            },
            {
                "date": "2019-10-04T11:47:26.540Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2019-11-05T00:00:00.000Z",
                "turnCodigo": "7130618"
            },
            {
                "date": "2021-10-27T10:15:47.300Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2021-11-24T00:00:00.000Z",
                "turnCodigo": "6430258"
            },
            {
                "date": "2021-11-24T14:01:18.977Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2021-11-30T00:00:00.000Z",
                "turnCodigo": "6430000"
            },
            {
                "date": "2021-08-10T11:23:25.383Z",
                "specialty": "UNICA",
                "attend": false,
                "rescheduled": false,
                "rescheduledDate": "2021-08-18T00:00:00.000Z",
                "turnCodigo": "6316640"
            }
        ],
        "pregnancy": {
            "value": true,
            "minor": false,
            "risk": false,
            "numberOfControls": 45,
            "lastTurn": "2023-04-17T09:39:50.637Z",
            "turnCodigo": "94201762"
        },
        "pediatricControls": {
            "value": "boolean",
            "quantity": "integer",
            "lastTurn": "date",
            "turnCodigo": "integer"
        },
        "dentalControls": {
            "value": "boolean",
            "lastTurn": "date",
            "turnCodigo": "integer"
        },
        "ophthalmologicalControls": {
            "value": "boolean",
            "lastTurn": "date",
            "turnCodigo": "integer"
        },
        "gynecologicalControls": {
            "value": "boolean",
            "lastTurn": "date",
            "turnCodigo": "integer"
        }
    },
    "alerts": {
        "pregnantMinor": "boolean",
        "pregnantWithoutControls": "boolean",
        "lackOfHygiene": "boolean",
        "lackOfCares": "boolean",
        "sexualAbuse": "boolean",
        "childAbuse": "boolean",
        "withoutFamilySupport": "boolean",
        "dysfunctionalFamily": "boolean",
        "withoutAdherence": "boolean",
        "chronicPalliative": "boolean",
        "domesticAccident": "boolean",
        "withoutDNI": "boolean",
        "probableConsumption": "boolean",
        "probablyPsychiatric": "boolean",
        "attemptedSuicide": "boolean",
        "foodTreatment": "boolean",
        "conductDisorder": "boolean",
        "posttraumaticStress": "boolean",
        "autolyticBehaviors": "boolean",
        "disability": "boolean",
        "absentFather": "boolean",
        "scarceSymbolicResources": "boolean",
        "abandonment": "boolean",
        "genderViolence": "boolean",
        "migrants": "boolean",
        "withoutTreatmentAdherence": "boolean",
        "lowLevelAlarms": "boolean",
        "housingProblem": "boolean",
        "insufficientFinancialResources": "boolean",
        "lawConflicts": "boolean",
        "familyDisorganization": "boolean",
        "littleNeonatologyPresence": "boolean",
        "teenageMother": "boolean",
        "streetSituation": "boolean",
        "deadFetus": "boolean",
        "deceasedBaby": "boolean"
    }
}
```


# .env file:
```
PORT=

AUTH_USER=
AUTH_PASS=
JWT_SECRET_KEY=

DB_SERVER=
DB_USER=
DB_PASSWORD=
DB_DATABASE=

CACHE_EXPIRATION_TIME=
```