INSERT INTO ACTIVIDAD VALUES ('1','Puenting','Berga','13:00:00','1h','Saltar de un puente bajo con una cuerda elastica, maravilloso para matarse de un golpe en la cabeza',150,0,10,'No es recomendable para embarazadas o para ciegos');
INSERT INTO ACTIVIDAD VALUES ('2','Escalada','Pirineos','8:00:00','8h','Nos vamos as los pirineos a escalar, esta muy chulo. Abalado por el ministerio de cultura',1000,1,3,'No es apto para mancos y tullidos. En caso de enbarazada se recomienda precaucion');
INSERT INTO ACTIVIDAD VALUES ('3','Submarinismo','Benidorm','8:00:00','2h','Experiencia unica para toda la familia siempre que su oeficiente intelectual supere los 90 puntos.',700,1,4,'No recomendable para gente con problemas respiratorios,miedo al oceano o hidrofobia.');


INSERT INTO CLIENTE VALUES ( 1 ,'56789452W','Intersexual',1997,'todorriko@gmail.com');
INSERT INTO CLIENTE VALUES ('2','76579176W','Intersexual',1920,'morenito_19@gmail.com');
INSERT INTO CLIENTE VALUES ('3','64276472W', NULL ,2000,'elotakuLoko@gmail.com');

INSERT INTO MONITOR VALUES ( 1 , 'Juan Jose Filaberto' , '26598879A' , 'godofredo69@gmail.com' , ' ES1234567891011121309876543210');
INSERT INTO MONITOR VALUES ( 2 , 'Alejandro Fabiolo Eustaquio' , '26598009A' , 'princeso_dela_noche@gmail.com' , ' ES1234567891011121309876547777');
INSERT INTO MONITOR VALUES ( 3 , 'Manolo del Bombo' , '26598811A' , 'caballera_mestiza@gmail.com' , ' ES1543267891011121309876543210');	

INSERT INTO CERTIFICADOS VALUES ( 'X92552610Z' , 'CERTIFIC_01' , 'es un certificado en el que demuestro que se hacer certificados para otras personas' );
INSERT INTO CERTIFICADOS VALUES ( 'X11152610Z' , 'CERTIFIC_02' , 'es un certificado en el que demuestro que se hacer de guia turistico' );
INSERT INTO CERTIFICADOS VALUES ( 'X22252610Z' , 'CERTIFIC_03' , 'es un certificado en el que demuestro que se hacer puenting y guiar actividades' );


INSERT INTO ACTIVIDIDADES_POR_MONITOR VALUES ( 1 , '1');
INSERT INTO ACTIVIDIDADES_POR_MONITOR VALUES ( 2 , '2');
INSERT INTO ACTIVIDIDADES_POR_MONITOR VALUES ( 3 , '3');

INSERT INTO CERTIFICADOS_MONITOR VALUES ( 'CERTIFIC_1' , '1' );
INSERT INTO CERTIFICADOS_MONITOR VALUES ( 'CERTIFIC_2' , '2' );
INSERT INTO CERTIFICADOS_MONITOR VALUES ( 'CERTIFIC_3' , '3' );

INSERT INTO TIPO_ACTIVIDAD VALUES( 'TIPO_ACT_1' , 'Saltar de un puente bajo con una cuerda elastica, maravilloso para matarse de un golpe en la cabeza', 'CERTIFICADO' ); 
INSERT INTO TIPO_ACTIVIDAD VALUES( 'TIPO_ACT_2' , 'Nos vamos as los pirineos a escalar, esta muy chulo. Abalado por el ministerio de cultura', 'CERTIFICADO' );
INSERT INTO TIPO_ACTIVIDAD VALUES( 'TIPO_ACT_3' , 'Experiencia unica para toda la familia siempre que su oeficiente intelectual supere los 90 puntos.', 'CERTIFICADO' );


INSERT INTO PREFERENCIAS_CLIENTE VALUES ( '1', 'TIPO_ACT_1')
INSERT INTO PREFERENCIAS_CLIENTE VALUES ( '2', 'TIPO_ACT_2')
INSERT INTO PREFERENCIAS_CLIENTE VALUES ( '3', 'TIPO_ACT_3')


INSERT INTO CATEGORIA_ACTIVIDAD VALUES ( 'TIPO_ACT_1' , '1' , 'EASY' );
INSERT INTO CATEGORIA_ACTIVIDAD VALUES ( 'TIPO_ACT_2' , '2' , 'DIFFICULT' );
INSERT INTO CATEGORIA_ACTIVIDAD VALUES ( 'TIPO_ACT_3' , '3' , 'MEDIUM' );


INSERT INTO RESERVA VALUES ( 'ID123456780123456789' , '1' , 1 , 5 , 100 , 500 , 123456789 , ('podriamos ofrecer programa de puntos para fidelizar clientes');
INSERT INTO RESERVA VALUES ( 'ID111156780123456789' , '2' , 2 , 6 , 100 , 500 , 123456789 , ('podriamos ofrecer programa de puntos para fidelizar clientes');
INSERT INTO RESERVA VALUES ( 'ID222256780123456789' , '3' , 3 , 7 , 100 , 500 , 123456789 , ('podriamos ofrecer programa de puntos para fidelizar clientes');


INSERT INTO RESERVA_ACEPTADA VALUES ( 'ID123456780123456789' ); 
INSERT INTO RESERVA_ACEPTADA VALUES ( 'ID111156780123456789' ); 
INSERT INTO RESERVA_ACEPTADA VALUES ( 'ID222256780123456789' ); 


INSERT INTO RESERVA_CANCELADA VALUES ( 'ID123456780123456789', 'la reserva la han cancelado porque han tenido un problema para llegar en la fecha acordada, harán otra cuando puedan venir' ); 
INSERT INTO RESERVA_CANCELADA VALUES ( 'ID111156780123456789', 'la reserva la han cancelado porque han tenido un problema para pagar  y tienen que pedir un prestamo' ); 
INSERT INTO RESERVA_CANCELADA VALUES ( 'ID222256780123456789', 'la reserva la han cancelado porque se han equivocado al hacerla y han pedido que sea cancelada' ); 




INSERT INTO MONITORES_RESERVA VALUES ( 'ID123456780123456789' , 1 ); 
INSERT INTO MONITORES_RESERVA VALUES ( 'ID111156780123456789' , 2 ); 
INSERT INTO MONITORES_RESERVA VALUES ( 'ID222256780123456789' , 3 ); 
