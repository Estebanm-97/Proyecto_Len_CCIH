

alter session set "_ORACLE_SCRIPT" = TRUE;
set serveroutput on;
ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD'



--Creacion Tablas--
CREATE TABLE cursos (
    IdCurso INT PRIMARY KEY,
    Nombre VARCHAR2(100),
    Nivel VARCHAR2(20),
    Modalidad VARCHAR2(20),
    IdHorario INT,
    FechaCreacion DATE,
    FechaModificacion DATE,
    IdModificacion INT
);

CREATE TABLE roles (
    IdRol NUMBER PRIMARY KEY,
    Nombre VARCHAR2(100),
    FechaCreacion DATE,
    FechaModificacion DATE
);

CREATE TABLE profesores (
    IdProfesor INT PRIMARY KEY,
    Nombre VARCHAR2(100),
    Apellido VARCHAR2(100),
    Correo VARCHAR2(100),
    Telefono VARCHAR2(20),
    IdStatus INT,
    Cedula INT
);

CREATE TABLE usuarios (
    IdUsuario INT,
    Cedula INT,
    Usuario VARCHAR2(20),
    PwUsuario VARCHAR2(20),
    IdRol INT,
    IdModificacion INT,
    IdStatus INT,
    FechaModificacion DATE,
    UltimaActividad DATE,
    FechaCreacion DATE
);


--Inserts a tablas--

INSERT INTO usuarios (IdUsuario, Cedula, Usuario, PwUsuario, UltimaActividad, IdRol, FechaModificacion, IdModificacion, IdStatus, FechaCreacion) VALUES
    (1, 116810507, 'emoreira', 'Temporal', '2023-02-22', 1, '2023-02-22', 1, 1, '2023-02-22');
INSERT INTO usuarios (IdUsuario, Cedula, Usuario, PwUsuario, UltimaActividad, IdRol, FechaModificacion, IdModificacion, IdStatus, FechaCreacion) VALUES
    (2, 987654321, 'kmendoza', 'Temporal2', '2023-02-22', 2, '2023-02-22', 1, 1, '2023-02-22');
INSERT INTO usuarios (IdUsuario, Cedula, Usuario, PwUsuario, UltimaActividad, IdRol, FechaModificacion, IdModificacion, IdStatus, FechaCreacion) VALUES
    (3, 123654987, 'erodriguez', 'Temporal3', '2023-02-22', 3, '2023-02-22', 1, 1, '2023-02-22');
INSERT INTO usuarios (IdUsuario, Cedula, Usuario, PwUsuario, UltimaActividad, IdRol, FechaModificacion, IdModificacion, IdStatus, FechaCreacion) VALUES
    (4, 785346129, 'mcabezas', 'Temporal4', '2023-02-22', 1, '2023-02-22', 0, 1, '2023-02-22');

select * from usuarios;

select USUARIO, IDROL
from usuarios
where usuario='emoreira'
and PWUSUARIO = 'Temporal';

commit;

INSERT INTO profesores (IdProfesor, Nombre, Apellido, Correo, Telefono, IdStatus, Cedula) VALUES
	(1, 'Profesor1', 'Moreira', 'Profesor1Moreira@proyecto,com','50678451265',1,123456789);
INSERT INTO profesores (IdProfesor, Nombre, Apellido, Correo, Telefono, IdStatus, Cedula) VALUES
	(2, 'Profesor2', 'Rodriguez', 'Profesor2Rodriguez@proyecto,com','50678457565',1,987654321);
INSERT INTO profesores (IdProfesor, Nombre, Apellido, Correo, Telefono, IdStatus, Cedula) VALUES
	(3, 'Profesor3', 'Mendoza', 'Profesor3Mendoza@proyecto,com','50673551265',1,123654987);
INSERT INTO profesores (IdProfesor, Nombre, Apellido, Correo, Telefono, IdStatus, Cedula) VALUES
	(4, 'Profesor4', 'Cabezas', 'Profesor4Cabezas@proyecto,com','50679651265',1,987321456);
INSERT INTO profesores (IdProfesor, Nombre, Apellido, Correo, Telefono, IdStatus, Cedula) VALUES
	(5, 'Profesor5', 'Vargas', 'Profesor5Vargas@proyecto,com','50678456865',1,4785963121);

Select * from profesores;

INSERT INTO roles (IdRol, Nombre, FechaCreacion, FechaModificacion) VALUES
	(1, 'Admin', '2023-02-22', '2023-02-22');
INSERT INTO roles (IdRol, Nombre, FechaCreacion, FechaModificacion) VALUES
	(2, 'Estudiante', '2023-02-22', '2023-02-22');
INSERT INTO roles (IdRol, Nombre, FechaCreacion, FechaModificacion) VALUES
	(3, 'Profesor', '2023-02-22', '2023-02-22');
INSERT INTO roles (IdRol, Nombre, FechaCreacion, FechaModificacion) VALUES
	(4, 'Oficinas', '2023-02-22', '2023-02-22');

Select * from roles;

INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(1, 'Ingles', 'Basico', 'Virtual', 1, TO_DATE('2023-02-22'), TO_DATE('2023-02-22'), 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
    (2, 'Ingles', 'Intermedio', 'Presencial', 2, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(3, 'Ingles', 'Avanzado', 'Virtual', 3, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(4, 'Portuguese', 'Basico', 'Virtual', 1, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(5, 'Portuguese', 'Intermedio', 'Presencial', 2, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(6, 'Portuguese', 'Avanzado', 'Virtual', 3, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(7, 'Aleman', 'Basico', 'Virtual', 1, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(8, 'Aleman', 'Intermedio', 'Presencial', 2, '2023-02-22', '2023-02-22', 1);
INSERT INTO Cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion) VALUES
	(9, 'Aleman', 'Avanzado', 'Virtual', 3, '2023-02-22', '2023-02-22', 1);

--Procesos Almacenados--

select * from usuarios;

CREATE OR REPLACE PROCEDURE obtener_usuario_y_idrol (
    p_usuario IN VARCHAR2,
    p_contrasena IN VARCHAR2,
    p_idrol OUT NUMBER,
    p_s_usuario OUT VARCHAR2
)
IS
BEGIN
    SELECT idrol, usuario
    INTO p_idrol, p_s_usuario
    FROM usuarios
    WHERE usuario = p_usuario AND pwusuario = p_contrasena;
    
    IF p_idrol IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Nombre de usuario y/o contraseña inválidos');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nombre de usuario: ' || p_s_usuario || ', ID de rol: ' || p_idrol);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Nombre de usuario y/o contraseña inválidos');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al obtener el usuario y el ID de rol.');
END;


DECLARE
    v_idrol usuarios.idrol%TYPE;
    v_usuario usuarios.usuario%TYPE;
BEGIN
    obtener_usuario_y_idrol('emoreira', 'asd', v_idrol, v_usuario);
END;

---Cursos

--CRUD OBTENER
CREATE OR REPLACE PROCEDURE obtener_cursos (
    p_idcurso IN INT,
    p_nombre OUT VARCHAR2,
    p_nivel OUT VARCHAR2,
    p_modalidad OUT VARCHAR2,
    p_idhorario OUT INT,
    p_fecha_creacion OUT DATE,
    p_fecha_modificacion OUT DATE,
    p_id_modificacion OUT INT
)
IS
BEGIN
    SELECT Nombre, Nivel, Modalidad, IdHorario, FechaCreacion, FechaModificacion, IdModificacion
    INTO p_nombre, p_nivel, p_modalidad, p_idhorario, p_fecha_creacion, p_fecha_modificacion, p_id_modificacion
    FROM cursos
    WHERE IdCurso = p_idcurso;
    
    IF p_nombre IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún curso con el ID especificado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nombre de curso: ' || p_nombre || ', Nivel: ' || p_nivel || ', Modalidad: ' || p_modalidad || ', ID de horario: ' || p_idhorario || ', Fecha de creación: ' || p_fecha_creacion || ', Fecha de modificación: ' || p_fecha_modificacion || ', ID de modificación: ' || p_id_modificacion);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún curso con el ID especificado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al obtener los datos del curso.');
END;

DECLARE
    v_idcurso cursos.IdCurso%TYPE := 1; -- Definimos el valor del ID del curso que queremos obtener
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
    v_modalidad cursos.Modalidad%TYPE;
    v_idhorario cursos.IdHorario%TYPE;
    v_fecha_creacion cursos.FechaCreacion%TYPE;
    v_fecha_modificacion cursos.FechaModificacion%TYPE;
    v_id_modificacion cursos.IdModificacion%TYPE;
BEGIN
    obtener_cursos(v_idcurso, v_nombre, v_nivel, v_modalidad, v_idhorario, v_fecha_creacion, v_fecha_modificacion, v_id_modificacion);
END;
--CRUD INSERTAR
CREATE OR REPLACE PROCEDURE insertar_curso (
    p_IdCurso IN NUMBER,
    p_Nombre IN VARCHAR2,
    p_Nivel IN VARCHAR2,
    p_Modalidad IN VARCHAR2,
    p_IdHorario IN NUMBER,
    p_IdModificacion IN NUMBER
)
IS
BEGIN
    INSERT INTO cursos (IdCurso, Nombre, Nivel, Modalidad, IdHorario, IdModificacion)
    VALUES (p_IdCurso, p_Nombre, p_Nivel, p_Modalidad, p_IdHorario, p_IdModificacion);
    
    DBMS_OUTPUT.PUT_LINE('El curso ha sido insertado correctamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al insertar el curso.');
END;

DECLARE
    v_IdCurso cursos.IdCurso%TYPE := 1;
    v_Nombre cursos.Nombre%TYPE := 'Curso de Oracle';
    v_Nivel cursos.Nivel%TYPE := 'Intermedio';
    v_Modalidad cursos.Modalidad%TYPE := 'Presencial';
    v_IdHorario cursos.IdHorario%TYPE := 12345;
    v_IdModificacion cursos.IdModificacion%TYPE := 1;
BEGIN
    insertar_curso(v_IdCurso, v_Nombre, v_Nivel, v_Modalidad, v_IdHorario, v_IdModificacion);
END;
--CRUD ACTUALIZAR
CREATE OR REPLACE PROCEDURE actualizar_curso (
    p_IdCurso IN NUMBER,
    p_Nombre IN VARCHAR2,
    p_Nivel IN VARCHAR2,
    p_Modalidad IN VARCHAR2,
    p_IdHorario IN NUMBER,
    p_IdModificacion IN NUMBER
)
IS
BEGIN
    UPDATE cursos
    SET Nombre = p_Nombre,
        Nivel = p_Nivel,
        Modalidad = p_Modalidad,
        IdHorario = p_IdHorario,
        IdModificacion = p_IdModificacion,
        FechaModificacion = current_timestamp()
    WHERE IdCurso = p_IdCurso;
    
    DBMS_OUTPUT.PUT_LINE('El curso ha sido actualizado correctamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al actualizar el curso.');
END;

DECLARE
    v_IdCurso cursos.IdCurso%TYPE := 1;
    v_Nombre cursos.Nombre%TYPE := 'Curso de Oracle Actualizado';
    v_Nivel cursos.Nivel%TYPE := 'Avanzado';
    v_Modalidad cursos.Modalidad%TYPE := 'Virtual';
    v_IdHorario cursos.IdHorario%TYPE := 56789;
    v_IdModificacion cursos.IdModificacion%TYPE := 2;
BEGIN
    actualizar_curso(v_IdCurso, v_Nombre, v_Nivel, v_Modalidad, v_IdHorario, v_IdModificacion);
END;
--CRUD ELIMINAR
CREATE OR REPLACE PROCEDURE eliminar_curso (
    p_IdCurso IN NUMBER
)
IS
BEGIN
    DELETE FROM cursos
    WHERE IdCurso = p_IdCurso;
    
    DBMS_OUTPUT.PUT_LINE('Se eliminó el curso con el IdCurso: ' || p_IdCurso);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún curso con el IdCurso: ' || p_IdCurso);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al eliminar el curso con el IdCurso: ' || p_IdCurso);
END;

DECLARE
    v_IdCurso cursos.IdCurso%TYPE := 1;
BEGIN
    eliminar_curso(v_IdCurso);
END;


---PROFESORES
--CRUD INSERTAR
CREATE OR REPLACE PROCEDURE insertar_profesor (
p_IdProfesor IN INT,
p_Nombre IN VARCHAR2,
p_Apellido IN VARCHAR2,
p_Correo IN VARCHAR2,
p_Telefono IN VARCHAR2,
p_IdStatus IN INT,
p_Cedula IN INT
)
IS
BEGIN
INSERT INTO profesores (
IdProfesor, Nombre, Apellido, Correo, Telefono, IdStatus, Cedula
) VALUES (
p_IdProfesor, p_Nombre, p_Apellido, p_Correo, p_Telefono, p_IdStatus, p_Cedula
);
COMMIT;
DBMS_OUTPUT.PUT_LINE('El profesor se ha insertado correctamente');
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al insertar el profesor.');
END;

DECLARE
    p_IdProfesor INT;
    p_Nombre VARCHAR2(20);
    p_Apellido VARCHAR2(50);
    p_Correo VARCHAR2(50);
    p_Telefono VARCHAR2(20);
    p_IdStatus INT;
    p_Cedula INT;
BEGIN
    p_IdProfesor := 1;
    p_Nombre := 'Juan';
    p_Apellido := 'Pérez';
    p_Correo := 'juan.perez@ejemplo.com';
    p_Telefono := '555-1234';
    p_IdStatus := 1;
    p_Cedula := 123456789;
    
    insertar_profesor(p_IdProfesor, p_Nombre, p_Apellido, p_Correo, p_Telefono, p_IdStatus, p_Cedula);
END;
--CRUD CONSULTAR
CREATE OR REPLACE PROCEDURE obtener_profesores (
    p_IdProfesor IN INT DEFAULT NULL,
    p_Nombre IN VARCHAR2 DEFAULT NULL,
    p_Apellido IN VARCHAR2 DEFAULT NULL,
    p_Correo IN VARCHAR2 DEFAULT NULL,
    p_Telefono IN VARCHAR2 DEFAULT NULL,
    p_IdStatus IN INT DEFAULT NULL,
    p_Cedula IN INT DEFAULT NULL
)
IS
    cursor c_profesores is select * from profesores
        where (p_IdProfesor is null or IdProfesor = p_IdProfesor)
        and (p_Nombre is null or Nombre = p_Nombre)
        and (p_Apellido is null or Apellido = p_Apellido)
        and (p_Correo is null or Correo = p_Correo)
        and (p_Telefono is null or Telefono = p_Telefono)
        and (p_IdStatus is null or IdStatus = p_IdStatus)
        and (p_Cedula is null or Cedula = p_Cedula);
BEGIN
    for profesor in c_profesores loop
        dbms_output.put_line('IdProfesor: ' || profesor.IdProfesor || ', Nombre: ' || profesor.Nombre || ', Apellido: ' || profesor.Apellido || ', Correo: ' || profesor.Correo || ', Telefono: ' || profesor.Telefono || ', IdStatus: ' || profesor.IdStatus || ', Cedula: ' || profesor.Cedula);
    end loop;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Ocurrió un error al obtener los profesores.');
END;

EXEC obtener_profesores(p_IdProfesor => 1);
--CRUD ELIMIAR
CREATE OR REPLACE PROCEDURE eliminar_profesores (
    p_IdProfesor IN INT
)
IS
BEGIN
    DELETE FROM profesores WHERE IdProfesor = p_IdProfesor;
    dbms_output.put_line('Registro eliminado exitosamente.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No se encontró ningún registro con el IdProfesor proporcionado.');
    WHEN OTHERS THEN
        dbms_output.put_line('Ocurrió un error al eliminar el registro.');
END;

EXEC eliminar_profesores(p_IdProfesor => 1);
--CRUD ACTALIZAR
CREATE OR REPLACE PROCEDURE actualizar_profesor (
    p_IdProfesor IN INT,
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Correo IN VARCHAR2,
    p_Telefono IN VARCHAR2,
    p_IdStatus IN INT,
    p_Cedula IN INT
)
IS
BEGIN
    UPDATE profesores
    SET Nombre = p_Nombre,
        Apellido = p_Apellido,
        Correo = p_Correo,
        Telefono = p_Telefono,
        IdStatus = p_IdStatus,
        Cedula = p_Cedula,
        FechaModificacion = SYSDATE,
        IdModificacion = USER
    WHERE IdProfesor = p_IdProfesor;
    DBMS_OUTPUT.PUT_LINE('Registro actualizado exitosamente.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún registro con el IdProfesor proporcionado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al actualizar el registro.');
END;

DECLARE
    v_IdProfesor INT := 1;
    v_Nombre VARCHAR2(20) := 'Juan';
    v_Apellido VARCHAR2(50) := 'Pérez';
    v_Correo VARCHAR2(50) := 'juan.perez@example.com';
    v_Telefono VARCHAR2(20) := '555-1234';
    v_IdStatus INT := 1;
    v_Cedula INT := 12345678;
BEGIN
    actualizar_profesor(
        p_IdProfesor => v_IdProfesor,
        p_Nombre => v_Nombre,
        p_Apellido => v_Apellido,
        p_Correo => v_Correo,
        p_Telefono => v_Telefono,
        p_IdStatus => v_IdStatus,
        p_Cedula => v_Cedula
    );
END;


----ROLES
--CRUD CONSULTAR
CREATE OR REPLACE PROCEDURE obtener_datos_rol(
p_idrol IN NUMBER,
p_nombre OUT VARCHAR2,
p_fecha_creacion OUT DATE,
p_fecha_modificacion OUT DATE
)
IS
BEGIN
SELECT nombre, FechaCreacion, FechaModificacion
INTO p_nombre, p_fecha_creacion, p_fecha_modificacion
FROM roles
WHERE IdRol = p_idrol;
IF p_nombre IS NULL THEN
    DBMS_OUTPUT.PUT_LINE('No se encontró un rol con ese ID');
ELSE
    DBMS_OUTPUT.PUT_LINE('Nombre del rol: ' || p_nombre || ', Fecha de creación: ' || p_fecha_creacion || ', Fecha de modificación: ' || p_fecha_modificacion);
END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('No se encontró un rol con ese ID');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al obtener los datos del rol.');
END;

DECLARE
v_idrol roles.IdRol%TYPE;
v_nombre roles.Nombre%TYPE;
v_fecha_creacion roles.FechaCreacion%TYPE;
v_fecha_modificacion roles.FechaModificacion%TYPE;
BEGIN
v_idrol := 2; -- se asigna el ID del rol que se desea obtener
obtener_datos_rol(p_idrol => v_idrol, p_nombre => v_nombre, p_fecha_creacion => v_fecha_creacion, p_fecha_modificacion => v_fecha_modificacion);
-- aquí puedes hacer lo que desees con las variables que contienen los datos del rol
END;


--CRUD INSERTAR
CREATE OR REPLACE PROCEDURE insertar_rol(
p_idrol IN NUMBER,
p_nombre IN VARCHAR2,
p_fecha_creacion IN DATE DEFAULT current_timestamp,
p_fecha_modificacion IN DATE DEFAULT current_timestamp
)
IS
BEGIN
INSERT INTO roles(IdRol, Nombre, FechaCreacion, FechaModificacion)
VALUES(p_idrol, p_nombre, p_fecha_creacion, p_fecha_modificacion);
COMMIT;
DBMS_OUTPUT.PUT_LINE('El rol con ID ' || p_idrol || ' ha sido insertado correctamente.');
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al insertar el rol.');
END;

DECLARE
v_idrol roles.IdRol%TYPE := 100; -- Aquí puedes asignar el valor del ID del nuevo rol a insertar
v_nombre roles.Nombre%TYPE := 'Nuevo Rol';
v_fecha_creacion roles.FechaCreacion%TYPE := SYSDATE;
v_fecha_modificacion roles.FechaModificacion%TYPE := SYSDATE;
BEGIN
insertar_rol(p_idrol => v_idrol, p_nombre => v_nombre, p_fecha_creacion => v_fecha_creacion, p_fecha_modificacion => v_fecha_modificacion);
END;

--CRUD ACTUALIZAR
CREATE OR REPLACE PROCEDURE actualizar_roles(
p_idrol IN INT,
p_nombre IN VARCHAR2,
p_fecha_modificacion IN DATE DEFAULT SYSDATE
)
IS
BEGIN
UPDATE roles
SET Nombre = p_nombre, FechaModificacion = p_fecha_modificacion
WHERE IdRol = p_idrol;
DBMS_OUTPUT.PUT_LINE('Se actualizaron los datos del rol con Id ' || p_idrol);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al actualizar los datos del rol con Id ' || p_idrol);
END;

DECLARE
v_idrol roles.IdRol%TYPE := 123; -- Valor de ejemplo, reemplazar por el IdRol que se desea actualizar
v_nombre roles.Nombre%TYPE := 'Nuevo nombre'; -- Valor de ejemplo, reemplazar por el nombre que se desea asignar
BEGIN
actualizar_roles(v_idrol, v_nombre);
END;
--CRUD ELIMINAR
CREATE OR REPLACE PROCEDURE eliminar_roles(
p_idrol IN INT
)
IS
BEGIN
DELETE FROM roles
WHERE IdRol = p_idrol;
DBMS_OUTPUT.PUT_LINE('Se eliminaron los datos del rol con Id ' || p_idrol);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al eliminar los datos del rol con Id ' || p_idrol);
END;

DECLARE
v_idrol roles.IdRol%TYPE := 123; -- Valor de ejemplo, reemplazar por el IdRol que se desea eliminar
BEGIN
eliminar_roles(v_idrol);
END;


--USUARIOS
--CRUD CONSULTAR
CREATE OR REPLACE PROCEDURE obtener_usuario_y_idrol (
    p_usuario IN VARCHAR2,
    p_contrasena IN VARCHAR2,
    p_idrol OUT NUMBER,
    p_s_usuario OUT VARCHAR2
)
IS
BEGIN
    SELECT idrol, usuario
    INTO p_idrol, p_s_usuario
    FROM usuarios
    WHERE usuario = p_usuario AND pwusuario = p_contrasena;
    
    IF p_idrol IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Nombre de usuario y/o contraseña inválidos');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nombre de usuario: ' || p_s_usuario || ', ID de rol: ' || p_idrol);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Nombre de usuario y/o contraseña inválidos');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocurrió un error al obtener el usuario y el ID de rol.');
END;

DECLARE
    v_idrol usuarios.idrol%TYPE;
    v_usuario usuarios.usuario%TYPE;
BEGIN
    obtener_usuario_y_idrol('emoreira', 'Temporal', v_idrol, v_usuario);
END;
--CRUD INSERTAR
CREATE OR REPLACE PROCEDURE insertar_usuario (
p_IdUsuario IN INTEGER,
p_Cedula IN INTEGER,
p_Usuario IN VARCHAR2,
p_PwUsuario IN VARCHAR2,
p_IdRol IN INTEGER,
p_IdModificacion IN INTEGER,
p_IdStatus IN INTEGER
)
IS
BEGIN
INSERT INTO usuarios (IdUsuario, Cedula, Usuario, PwUsuario, IdRol, IdModificacion, IdStatus)
VALUES (p_IdUsuario, p_Cedula, p_Usuario, p_PwUsuario, p_IdRol, p_IdModificacion, p_IdStatus);
COMMIT;
DBMS_OUTPUT.PUT_LINE('Datos de usuario insertados correctamente.');
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al insertar los datos del usuario.');
END;

DECLARE
v_idrol usuarios.IdRol%TYPE;
v_s_usuario usuarios.Usuario%TYPE;
BEGIN
insertar_usuario(5, 45787875, 'FZAMORA', 'XXXXXX', 1, 2023-02-27, 1);
END;

SELECT * FROM USUARIOS;

--CRUD ACTUALIZAR
CREATE OR REPLACE PROCEDURE actualizar_usuario (
p_IdUsuario IN INTEGER,
p_Cedula IN INTEGER,
p_Usuario IN VARCHAR2,
p_PwUsuario IN VARCHAR2,
p_IdRol IN INTEGER,
p_IdModificacion IN INTEGER,
p_IdStatus IN INTEGER
)
IS
BEGIN
UPDATE usuarios
SET Cedula = p_Cedula,
Usuario = p_Usuario,
PwUsuario = p_PwUsuario,
IdRol = p_IdRol,
IdModificacion = p_IdModificacion,
IdStatus = p_IdStatus
WHERE IdUsuario = p_IdUsuario;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Datos de usuario actualizados correctamente.');
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('No se encontró un usuario con el IdUsuario proporcionado.');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al actualizar los datos del usuario.');
END;

DECLARE
v_IdUsuario usuarios.IdUsuario%TYPE := 1;
v_Cedula usuarios.Cedula%TYPE := 987654321;
v_Usuario usuarios.Usuario%TYPE := 'usuario1_modificado';
v_PwUsuario usuarios.PwUsuario%TYPE := 'password1_modificado';
v_IdRol usuarios.IdRol%TYPE := 2;
v_IdModificacion usuarios.IdModificacion%TYPE := 1;
v_IdStatus usuarios.IdStatus%TYPE := 2;
BEGIN
actualizar_usuario(v_IdUsuario, v_Cedula, v_Usuario, v_PwUsuario, v_IdRol, v_IdModificacion, v_IdStatus);
END;
--CRUD ELIMINAR
CREATE OR REPLACE PROCEDURE eliminar_usuario (
p_IdUsuario IN INTEGER
)
IS
BEGIN
DELETE FROM usuarios
WHERE IdUsuario = p_IdUsuario;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Usuario eliminado correctamente.');
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('No se encontró un usuario con el IdUsuario proporcionado.');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Ocurrió un error al eliminar el usuario.');
END;

DECLARE
v_IdUsuario usuarios.IdUsuario%TYPE := 3;
BEGIN
eliminar_usuario(v_IdUsuario);
END;

select * from usuarios;

commit;

--Cursor 1: Mostrar el nombre de todos los cursos

DECLARE
    CURSOR c_cursos IS
        SELECT Nombre FROM cursos;
    v_nombre cursos.Nombre%TYPE;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nombre;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_nombre);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 2: Mostrar el número de cursos por nivel
DECLARE
    CURSOR c_cursos IS
        SELECT Nivel, COUNT(*) AS NumCursos FROM cursos GROUP BY Nivel;
    v_nivel cursos.Nivel%TYPE;
    v_num_cursos NUMBER;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nivel, v_num_cursos;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nivel: ' || v_nivel || ', NumCursos: ' || v_num_cursos);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 3: Mostrar el número de cursos por modalidad
DECLARE
    CURSOR c_cursos IS
        SELECT Modalidad, COUNT(*) AS NumCursos FROM cursos GROUP BY Modalidad;
    v_modalidad cursos.Modalidad%TYPE;
    v_num_cursos NUMBER;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_modalidad, v_num_cursos;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Modalidad: ' || v_modalidad || ', NumCursos: ' || v_num_cursos);

    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 4: Mostrar el nombre y nivel de los cursos con fecha de creación en el mes actual
DECLARE
    CURSOR c_cursos IS
        SELECT Nombre, Nivel FROM cursos WHERE EXTRACT(MONTH FROM FechaCreacion) = EXTRACT(MONTH FROM SYSDATE);
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 5: Mostrar el nombre y nivel de los cursos con fecha de modificación en el mes actual
DECLARE
    CURSOR c_cursos IS
        SELECT Nombre, Nivel FROM cursos WHERE EXTRACT(MONTH FROM FechaModificacion) = EXTRACT(MONTH FROM SYSDATE);
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 6: Mostrar el nombre y nivel de los cursos con más de 10 modificaciones
DECLARE
    CURSOR c_cursos IS
        SELECT cursos.Nombre, cursos.Nivel
        FROM cursos
        INNER JOIN (
            SELECT IdCurso, COUNT(DISTINCT IdModificacion) AS NumModificaciones
            FROM cursos
            GROUP BY IdCurso
            HAVING COUNT(DISTINCT IdModificacion) > 10
        ) c ON cursos.IdCurso = c.IdCurso;
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 7: Mostrar el nombre y nivel de los cursos que no tienen horario asignado
DECLARE
    CURSOR c_cursos IS
        SELECT Nombre, Nivel FROM cursos WHERE IdHorario IS NULL;
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 8: Mostrar el nombre y nivel de los cursos creados por un usuario específico
DECLARE
    CURSOR c_cursos (p_IdModificacion INT) IS
        SELECT Nombre, Nivel FROM cursos WHERE IdModificacion = p_IdModificacion;
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos(1); -- Supongamos que el usuario con IdModificacion = 1 creó estos cursos
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 9: Mostrar el nombre y nivel de los cursos con el mismo nivel que otro curso específico
DECLARE
    CURSOR c_cursos (p_IdCurso INT) IS
        SELECT Nombre, Nivel FROM cursos WHERE Nivel = (SELECT Nivel FROM cursos WHERE IdCurso = p_IdCurso);
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos(1); -- Supongamos que el curso con IdCurso = 1 es el curso de referencia
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;

--Cursor 10: Mostrar el nombre y nivel de los cursos que se crearon hace más de 6 meses
DECLARE
    CURSOR c_cursos IS
        SELECT Nombre, Nivel FROM cursos WHERE FechaCreacion < ADD_MONTHS(SYSDATE, -0);
    v_nombre cursos.Nombre%TYPE;
    v_nivel cursos.Nivel%TYPE;
BEGIN
    OPEN c_cursos;
    LOOP
        FETCH c_cursos INTO v_nombre, v_nivel;
        EXIT WHEN c_cursos%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre || ', Nivel: ' || v_nivel);
    END LOOP;
    CLOSE c_cursos;
END;


--trigger de AFTER INSERT
CREATE OR REPLACE TRIGGER trg_cursos_insert
AFTER INSERT ON cursos
FOR EACH ROW
BEGIN
    -- Actualizar la fecha de creación y modificación del curso
    :NEW.FechaCreacion := SYSDATE;
    :NEW.FechaModificacion := SYSDATE;
    
    -- Asignar un nuevo ID de modificación al curso
    SELECT MAX(IdModificacion) INTO :NEW.IdModificacion FROM cursos;
    :NEW.IdModificacion := COALESCE(:NEW.IdModificacion, 0) + 1;
END;

--Trigger de AFTER DELETE
CREATE OR REPLACE TRIGGER trg_cursos_delete
AFTER DELETE ON cursos
FOR EACH ROW
BEGIN
    -- Actualizar la fecha de modificación del curso
    :OLD.FechaModificacion := SYSDATE;
    
    -- Asignar un nuevo ID de modificación al curso
    SELECT MAX(IdModificacion) INTO :OLD.IdModificacion FROM cursos;
    :OLD.IdModificacion := COALESCE(:OLD.IdModificacion, 0) + 1;
END;

--Trigger de AFTER UPDATE
CREATE OR REPLACE TRIGGER trg_cursos_update
AFTER UPDATE ON cursos
FOR EACH ROW
BEGIN
    -- Actualizar la fecha de modificación del curso
    :NEW.FechaModificacion := SYSDATE;
    
    -- Asignar un nuevo ID de modificación al curso
    SELECT MAX(IdModificacion) INTO :NEW.IdModificacion FROM cursos;
    :NEW.IdModificacion := COALESCE(:NEW.IdModificacion, 0) + 1;
END;

--trigger de AFTER DELETE en la tabla roles
--(para este se debe crear la Tabla roles_log en donde se almacena el rol o roles eliminados)

CREATE TABLE roles_log (
    Id NUMBER PRIMARY KEY,
    IdRol NUMBER,
    Nombre VARCHAR2(100),
    FechaEliminacion DATE
);

CREATE OR REPLACE TRIGGER trg_roles_after_delete
AFTER DELETE ON roles
FOR EACH ROW
DECLARE
    v_id NUMBER;
BEGIN
    -- Generar un ID de log aleatorio
    SELECT dbms_random.value INTO v_id FROM dual;
    
    -- Insertar una fila en la tabla de log
    INSERT INTO roles_log (Id, IdRol, Nombre, FechaEliminacion)
    VALUES (v_id, :OLD.IdRol, :OLD.Nombre, SYSDATE);
    
    -- Mostrar un mensaje de confirmación
    DBMS_OUTPUT.PUT_LINE('El rol "' || :OLD.Nombre || '" ha sido eliminado');
END;


CREATE OR REPLACE TRIGGER tr_eliminar_curso 
AFTER DELETE ON cursos
FOR EACH ROW
DECLARE idcurso cursos.idCurso%type;
BEGIN
    idcurso := :OLD.IdCurso;
    INSERT INTO logs (accion, tabla, id_registro) VALUES
    ('DELETE', 'cursos', idcurso);
END;

CREATE TABLE logs(
Id_num NUMBER primary key,
accion varchar2(10),
tabla varchar2(20),
id_registro NUMBER,
fecha DATE DEFAULT CURRENT_TIMESTAMP
);


--Trigger para establecer la fecha de creación antes de insertar un nuevo registro:

CREATE OR REPLACE TRIGGER trg_before_insert_curso
BEFORE INSERT
ON cursos
FOR EACH ROW
BEGIN
    :new.FechaCreacion := SYSDATE;
END;

--Trigger para registrar la fecha de modificación antes de actualizar un registro:
CREATE OR REPLACE TRIGGER trg_before_update_curso
BEFORE UPDATE
ON cursos
FOR EACH ROW
BEGIN
    :new.FechaModificacion := SYSDATE;
END;

--Trigger para auditar la inserción de un nuevo registro en una tabla de auditoría:
CREATE TABLE cursos_audit (
    IdAudit NUMBER,
    IdCurso INT,
    Nombre VARCHAR2(100),
    Nivel VARCHAR2(20),
    Modalidad VARCHAR2(20),
    IdHorario INT,
    FechaCreacion DATE,
    FechaModificacion DATE,
    IdModificacion INT,
    Accion VARCHAR2(20),
    FechaAccion DATE
);

CREATE SEQUENCE cursos_audit_seq;

CREATE OR REPLACE TRIGGER trg_after_insert_curso_audit
AFTER INSERT
ON cursos
FOR EACH ROW
BEGIN
    INSERT INTO cursos_audit (
        IdAudit,
        IdCurso,
        Nombre,
        Nivel,
        Modalidad,
        IdHorario,
        FechaCreacion,
        FechaModificacion,
        IdModificacion,
        Accion,
        FechaAccion
    ) VALUES (
        cursos_audit_seq.NEXTVAL,
        :new.IdCurso,
        :new.Nombre,
        :new.Nivel,
        :new.Modalidad,
        :new.IdHorario,
        :new.FechaCreacion,
        :new.FechaModificacion,
        :new.IdModificacion,
        'INSERT',
        SYSDATE
    );
END;

