%--------------------------------------------------------------------------
%------- TAREA 2 Reconocimiento de Placas----------------------------------
%------- Procesamiento Digital de Iágenes----------------------------------
%------- Por: Carlos Enrique Agudelo Giraldo carloskikea@gmail.com --------
%------------ Pablo Andres Diaz Gomez pandigoo@gmail.com ------------------
%--------- Estudiantes Ingeniería de Sistemas  ----------------------------
%-------  Universidad de Antioquia ----------------------------------------
%------- 24 Mayo 2015-----------------------------------------------------
%--------------------------------------------------------------------------


%función que se encarga de recortar la imagen dadad la filas, columnas y
%capas de la imagen a recortar
function [b, a_org] = recortarImagen(a, fil, col, cap)

    fil_inf = floor(fil/6); %fila inferior a recortar
    col_inf = floor(col/4); %columna inferior a recortar
    fil_sup = floor(fil*3/4); %fila superior a recortar
    col_sup = floor(col*3/4);%columna superior a recortar
    b = zeros(fil_sup - fil_inf, col_sup - col_inf, cap);
    b(:,:,1:3) = a(fil_inf + 1:fil_sup, col_inf + 1:col_sup, 1:3);
    b = uint8(b);
    a_org = b;
    
end