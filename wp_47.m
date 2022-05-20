function varargout = wp_47(varargin)
% WP_47 MATLAB code for wp_47.fig
%      WP_47, by itself, creates a new WP_47 or raises the existing
%      singleton*.
%
%      H = WP_47 returns the handle to a new WP_47 or the handle to
%      the existing singleton*.
%
%      WP_47('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WP_47.M with the given input arguments.
%
%      WP_47('Property','Value',...) creates a new WP_47 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wp_47_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wp_47_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wp_47

% Last Modified by GUIDE v2.5 20-May-2022 09:08:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wp_47_OpeningFcn, ...
                   'gui_OutputFcn',  @wp_47_OutputFcn, ...
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


% --- Executes just before wp_47 is made visible.
function wp_47_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wp_47 (see VARARGIN)

% Choose default command line output for wp_47
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wp_47 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wp_47_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnshow_047.
function btnshow_047_Callback(hObject, eventdata, handles)
filename = 'laptop_price.csv';
data = readtable(filename);
data = data(1:50, :);
dataset = table2cell(data);

set(handles.uit_047, 'Data', dataset, 'ColumnName', {'laptop_ID','Company','Product','TypeName','Inches','ScreenResolution','Cpu','Ram','Memory','Gpu','OpSys','Weight','Price_euros'});
% hObject    handle to btnshow_047 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btncalcu_047.
function btncalcu_047_Callback(hObject, eventdata, handles)
filename = 'laptop_price.csv';
data = readtable(filename);
data = data(1:50, [5 8 12 13]);

w = [1,3,2,4];
k = [1, 1,0,0];

% hObject    handle to btncalcu_047 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
