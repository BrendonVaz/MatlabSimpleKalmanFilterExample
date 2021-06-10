%% GUI CODE:
function varargout = kalman(varargin)
% KALMAN M-file for kalman.fig
%      KALMAN, by itself, creates a new KALMAN or raises the existing
%      singleton*.
%
%      H = KALMAN returns the handle to a new KALMAN or the handle to
%      the existing singleton*.
%
%      KALMAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALMAN.M with the given input arguments.
%
%      KALMAN('Property','Value',...) creates a new KALMAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalman_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalman_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalman

% Last Modified by GUIDE v2.5 25-Mar-2012 19:01:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalman_OpeningFcn, ...
                   'gui_OutputFcn',  @kalman_OutputFcn, ...
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
% --- Executes just before kalman is made visible.
function kalman_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalman (see VARARGIN)
% Choose default command line output for kalman
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes kalman wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = kalman_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%% TEXT BOX CREATE
function txtposition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtposition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function txtvelocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function txtomega_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtomega (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function txttime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txttime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function txtsnr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtsnr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% TEXT BOX CALLBACK
function txtposition_Callback(hObject, eventdata, handles)
% hObject    handle to txtposition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of txtposition as text
%        str2double(get(hObject,'String')) returns contents of txtposition as a double
% --- Executes during object creation, after setting all properties.
function txtsnr_Callback(hObject, eventdata, handles)
% hObject    handle to txtsnr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of txtsnr as text
%        str2double(get(hObject,'String')) returns contents of txtsnr as a double
% --- Executes during object creation, after setting all properties.
function txttime_Callback(hObject, eventdata, handles)
% hObject    handle to txttime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of txttime as text
%        str2double(get(hObject,'String')) returns contents of txttime as a double
% --- Executes during object creation, after setting all properties.
function txtomega_Callback(hObject, eventdata, handles)
% hObject    handle to txtomega (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of txtomega as text
%        str2double(get(hObject,'String')) returns contents of txtomega as a double
% --- Executes during object creation, after setting all properties.
function txtvelocity_Callback(hObject, eventdata, handles)
% hObject    handle to txtvelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of txtvelocity as text
%        str2double(get(hObject,'String')) returns contents of txtvelocity as a double
% --- Executes during object creation, after setting all properties.

%% PUSH BUTTON CALLBACK
function btnexit_Callback(hObject, eventdata, handles)
% hObject    handle to btnexit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in btnexit.
delete(handles.figure1)
function btnrun_Callback(hObject, eventdata, handles)
% hObject    handle to btnrun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in btnrun.
cla
clc
%% system model
w = str2num(get(handles.txtomega,'String'));        %angular velocity
dt = str2num(get(handles.txttime,'String'));        %update frequency
pos = str2num(get(handles.txtposition,'String'));
vel = str2num(get(handles.txtvelocity,'String'));
snr = str2num(get(handles.txtsnr,'String'));      %signal to noise ratio
xo = [pos ; vel];                                   %initial state
A=[0 1 ; -(w^2) 0];                                 %system dynamics
H= [1 0];                                           %output matrix
phi = expm(A*dt);                                   %dynamics in time space
%% declare variables
x = [];                                             %true state
z = [];                                             %observation
%% initialize variables
x(1,:) = xo';                                       %initialize state
xi = xo;                                            %initialize step
z(1) = x(1) + (-1 + rand(1)*2)/snr;                 %initial observation
m = (x(1)+z(1))/2;                                  %initial mean
r = ((x(1)-m)^2+(z(1)-m)^2)/2;                      %initial variance
%% propogation
for i = 2:1:1000
    xi = phi*xi;                                    %propogate state
    x(i,:) = xi';                                   %save step
    z(i) = H*xi + (-1 + rand(1)*2)/snr;             %observe position + noise
end
%% plot solution
hold on
xlabel('Time step');
ylabel('State');
plot(z, 'g')
plot(x(:,1),'b')
legend('Observation','True State');

