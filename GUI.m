function varargout = untitled3(varargin)
% GUI MATLAB code for GUI.fig
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled3

% Last Modified by GUIDE v2.5 08-Sep-2019 23:56:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled3_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled3 is made visible.
function untitled3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled3 (see VARARGIN)

% Choose default command line output for untitled3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = untitled3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
x=edge(x,'canny');
axes(handles.axes1);
imshow(x);



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
[a,b]=uigetfile();
x=strcat(b,a);
x=imread(x);
axes(handles.axes1);
imshow(x);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
axes(handles.axes1);
imshow(x);




% --- Executes during object creation, after setting all properties.
function pushbutton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
[r,c]=size(x);
for x=1:256
    count(x)=x;
    intensity(x)=0;
end
for x=1:r
    for y=1:c
        temp=x(x,y);
        intensity(temp+1)=intensity(temp+1)+1;
    end
end
axes(handles.axes1);
plot(count,intensity);


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
val1= get(handles.checkbox2,'value');

% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val2= get(handles.checkbox3,'value');
% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function uipanel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
j=255-x(:,:,:);
axes(handles.axes1);
imshow(j);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
[r,c,d]=size(x);
for a=1:r
   for b=1:c
       for x=1:d
            if(x(a,b,x)<128)
                x(a,b,x)=50;
            else
                x(a,b,x)=200;
            end
       end
    end
end
axes(handles.axes1);
imshow(x);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
[r,c]=size(x);
for a=1:r
   for b=1:c
        if(x(a,b)<=128)
            x(a,b)=0;
        else
            x(a,b)=255;
       end
        
    end
end
axes(handles.axes1);
imshow(x);
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=im2double(x);
[r,c,d]=size(x);
b=zeros(r,c);
for m=2:r-2
    for n=2:c-2
        for o=1:d
            b(m,n,o)=(x(m,n,o)+x(m-1,n-1,o)+x(m-1,n,o)+x(m-1,n+1,o)+x(m,n-1,o)+x(m,n+1,o)+x(m+1,n-1,o)+x(m+1,n,o)+x(m+1,n+1,o))/9;
        end
    end
end
axes(handles.axes1);
imshow(b)

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
p=im2double(x);
k=input('Enter the value of constant: ');
[r,c,d]=size(p);
for v=1:r
    for y=1:c
        a(v,y,1)=k*log10(1+p(v,y,1));
        a(v,y,2)=k*log10(1+p(v,y,2));
        a(v,y,3)=k*log10(1+p(v,y,3));
    end
end
axes(handles.axes1);
imshow(a);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
p=im2double(x);
k=input('Enter the value of constant: ');
[r,c,d]=size(p);
for v=1:r
    for y=1:c
        a(v,y,1)=k*log10(1+p(v,y,1));
        a(v,y,2)=k*log10(1+p(v,y,2));
        a(v,y,3)=k*log10(1+p(v,y,3));
    end
end
axes(handles.axes1);
imshow(a);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
b=im2double(x);
[r,c]=size(b);
%a(1:r,1:c)=0;
for m=1:r-1
    for n=1:c-1
        gx=b(m,n)-b(m+1,n+1);
        gy=b(m,n+1)-b(m+1,n);
        a(m,n)=sqrt(gx*gx+gy*gy);
    end
end
axes(handles.axes1);
imshow(x);

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
[r,c,d]=size(x);
x=im2double(x);
for m=2:r-1
    for n=2:c-1
        for o=1:d
            dfx=(-1)*x(m-1,n-1,o)+(0)*x(m-1,n,o)+(1)*x(m-1,n+1,o)+(-2)*x(m,n-1,o)+(0)*x(m,n,o)+(2)*x(m,n+1,o)+(-1)*x(m+1,n-1,o)+(0)*x(m+1,n,o)+1*x(m,n+1,o);
            dfy=(-1)*x(m-1,n-1,o)+(-2)*x(m-1,n,o)+(-1)*x(m-1,n+1,o)+(0)*x(m,n-1,o)+(0)*x(m,n,o)+(0)*x(m,n+1,o)+(1)*x(m+1,n-1,o)+(2)*x(m+1,n,o)+1*x(m,n+1,o);
            a(m,n,o)=sqrt(dfx*dfx+dfy*dfy);
        end
    end
end
axes(handles.axes1);
imshow(x);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
x=rgb2gray(x);
[r,c,d]=size(x);
x=im2double(x);
for m=2:r-1
    for n=2:c-1
        for o=1:d
            q=(-1)*x(m-1,n-1,o)+(0)*x(m-1,n,o)+(1)*x(m-1,n+1,o)+(-1)*x(m,n-1,o)+(0)*x(m,n,o)+(1)*x(m,n+1,o)+(-1)*x(m+1,n-1,o)+(0)*x(m+1,n,o)+1*x(m,n+1,o);
            w=(1)*x(m-1,n-1,o)+(1)*x(m-1,n,o)+(1)*x(m-1,n+1,o)+(0)*x(m,n-1,o)+(0)*x(m,n,o)+(0)*x(m,n+1,o)+(-1)*x(m+1,n-1,o)+(-1)*x(m+1,n,o)+(-1)*x(m,n+1,o);
            a(m,n,o)=sqrt(q*w+q*w);
        end
    end
end
axes(handles.axes1);
imshow(x);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
J = imnoise(x,'gaussian');
axes(handles.axes1);
imshow(J);

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
J = imnoise(x,'salt & pepper');
axes(handles.axes1);
imshow(J);

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
k=input('Enter the value of sigma (range = [0.01,10]) : ');
k=input('Enter the value of alpha (range = [0,5]): ');
x= locallapfilt(x,sigma,alpha);
axes(handles.axes1);
imshow(x);


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
J = imnoise(x,'poisson');
axes(handles.axes1);
imshow(J);


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
J = imnoise(x,'speckle');
axes(handles.axes1);
imshow(J);

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
J = imnoise(x,'poisson');
axes(handles.axes1);
imshow(J);


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
J = medfilt2(X);
axes(handles.axes1);
imshow(J);

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
