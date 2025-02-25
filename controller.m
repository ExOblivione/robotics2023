function varargout = controller(varargin)
    % CONTROLLER MATLAB code for controller.fig%
    % See also: GUIDE, GUIDATA, GUIHANDLES
    % Last Modified by GUIDE v2.5 17-Sep-2023 14:05:09
    
        % Begin initialization code - DO NOT EDIT
        gui_Singleton = 1;
        gui_State = struct('gui_Name',       mfilename, ...
                        'gui_Singleton',  gui_Singleton, ...
                        'gui_OpeningFcn', @controller_OpeningFcn, ...
                        'gui_OutputFcn',  @controller_OutputFcn, ...
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
    
    % --- Executes just before controller is made visible.
    function controller_OpeningFcn(hObject, eventdata, handles, varargin)
    
        % Choose default command line output for controller
        handles.output = hObject;
    
        % Update handles structure
        guidata(hObject, handles);
    
        % UIWAIT makes controller wait for user response (see UIRESUME)
        % uiwait(handles.figure1);
    
    
    % --- Outputs from this function are returned to the command line.
    function varargout = controller_OutputFcn(hObject, eventdata, handles) 
    
        % Get default command line output from handles structure
        varargout{1} = handles.output;
    
    
    
    % --- Executes on slider movement.
    function slider2_Callback(hObject, eventdata, handles)
    % While moving the slider in the controller, the value is collected.
    % The joint handle is retrieved from the simulator, then with the use of 
    % the simxSetJointTargetPosition() function, the arm is moved by the value 
    % of the slider position.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        % Get slider position
        slider_pos1 = int64(get(handles.slider2, 'Value'));
        [r, j0] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint0', sim.simx_opmode_blocking);
        sim.simxSetJointTargetPosition(clientID,j0,slider_pos1,sim.simx_opmode_streaming);
    
    % --- Executes during object creation, after setting all properties.
    function slider2_CreateFcn(hObject, eventdata, handles)
    
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end
    
    
    % --- Executes on slider movement.
    function slider3_Callback(hObject, eventdata, handles)
    % While moving the slider in the controller, the value is collected.
    % The joint handle is retrieved from the simulator, then with the use of 
    % the simxSetJointTargetPosition() function, the arm is moved by the value 
    % of the slider position.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        % Get slider position
        slider_pos2 = int64(get(handles.slider3, 'Value'));
        [r, j1] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint1', sim.simx_opmode_blocking);
        sim.simxSetJointTargetPosition(clientID,j1,slider_pos2,sim.simx_opmode_streaming);
    
    % --- Executes during object creation, after setting all properties.
    function slider3_CreateFcn(hObject, eventdata, handles)
    
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end
    
    
    % --- Executes on slider movement.
    function slider4_Callback(hObject, eventdata, handles)
    % While moving the slider in the controller, the value is collected.
    % The joint handle is retrieved from the simulator, then with the use of 
    % the simxSetJointTargetPosition() function, the arm is moved by the value 
    % of the slider position.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        % Get slider position
        slider_pos3 = int64(get(handles.slider4, 'Value'));
        [r, j2] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint2', sim.simx_opmode_blocking);
        sim.simxSetJointTargetPosition(clientID,j2,slider_pos3,sim.simx_opmode_streaming);
    
    % --- Executes during object creation, after setting all properties.
    function slider4_CreateFcn(hObject, eventdata, handles)
    
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end
    
    
    % --- Executes on slider movement.
    function slider5_Callback(hObject, eventdata, handles)
    % While moving the slider in the controller, the value is collected.
    % The joint handle is retrieved from the simulator, then with the use of 
    % the simxSetJointTargetPosition() function, the arm is moved by the value 
    % of the slider position.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        % Get slider position
        slider_pos4 = int64(get(handles.slider5, 'Value'));
        [r, j3] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint3', sim.simx_opmode_blocking);
        sim.simxSetJointTargetPosition(clientID,j3,slider_pos4,sim.simx_opmode_streaming);
    
    % --- Executes during object creation, after setting all properties.
    function slider5_CreateFcn(hObject, eventdata, handles)
    
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end
    
    
    % --- Executes on slider movement.
    function slider6_Callback(hObject, eventdata, handles)
    % While moving the slider in the controller, the value is collected.
    % The joint handle is retrieved from the simulator, then with the use of 
    % the simxSetJointTargetPosition() function, the arm is moved by the value 
    % of the slider position.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        % Get slider position
        
        slider_pos5 = int64(get(handles.slider6, 'Value'));
        [r, j4] = sim.simxGetObjectHandle(clientID, 'youBotArmJoint4', sim.simx_opmode_blocking);
        sim.simxSetJointTargetPosition(clientID,j4,slider_pos5,sim.simx_opmode_streaming);
            
    % --- Executes during object creation, after setting all properties.
    function slider6_CreateFcn(hObject, eventdata, handles)
        
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end
    
    % --- Executes on button press in pushbutton1.
    function pushbutton1_Callback(hObject, eventdata, handles)
    % This button is responsible for capturing an image with the Vision Sensor.
    % If successful, save the RGB image to a file: 'img.jpg'.
    
    % References:
        % https://www.youtube.com/watch?v=bh3wY5BHzsg&t=1s
        % https://forum.coppeliarobotics.com/viewtopic.php?t=2407
        % https://forum.coppeliarobotics.com/viewtopic.php?t=6616
        % https://www.youtube.com/watch?v=zWNWdwAeW3k
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
    
        [returnCode1,sensor] = sim.simxGetObjectHandle(clientID, 'Cam', sim.simx_opmode_blocking);
        [returnCode2,resolution,Image] = sim.simxGetVisionSensorImage2(clientID, sensor, 2, sim.simx_opmode_oneshot_wait);
        imwrite(Image, 'img.jpg');
        disp('An image is captured and saved to img.jpg.');
    
        im1 = imread('img.jpg');
        im1 = im2double(im1);
        axes(handles.axes1);
        imshow(im1);
    
    % --- Executes on button press in pushbutton2.
    function pushbutton2_Callback(hObject, eventdata, handles)
    % The button is responsible for verifying that the connection is open to
    % the simulator. If connection successful, display message: 'Connected to
    % remote API server', otherwise it should display: 'Failed connecting to
    % remote API server'.
    
    simRemoteApi.start(19000)
    
    % Reference:
        % https://www.youtube.com/watch?v=7Z01cRw_i5E
        % https://www.mathworks.com/help/matlab/ref/msgbox.html
        
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        if (clientID > -1)
            disp('Connected to remote API server');
            f = msgbox("The connection to the remote API succeeded.","Success");
        else
            disp('Failed connecting to remote API server');
            f = msgbox("Failed to connect to the remote API.","Error","error");
        end
    % --- Executes on button press in pushbutton3.
    function pushbutton3_Callback(hObject, eventdata, handles)
    % The base is moved by a joystick, which includes buttons to move forward, backward, 
    % to the left, to the right and to rotate. This callback function is for moving the 
    % robot forward. The wheel joint handles are collected from the simulator, then with
    % the use of the simxSetJointTargetVelocity() function, each wheels are moved.
    
    % Since in this specific case we want the robot base to move forward, each velocity
    % should be defined by a positive number.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        [r1,w1] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fl', sim.simx_opmode_blocking);
        [r2,w2] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_blocking);
        [r3,w3] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_blocking);
        [r4,w4] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_blocking);
    
        sim.simxSetJointTargetVelocity(clientID,w1,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w2,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w3,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w4,20,sim.simx_opmode_streaming);
    
    
    % --- Executes on button press in pushbutton4.
    function pushbutton4_Callback(hObject, eventdata, handles)
    % The base is moved by a joystick, which includes buttons to move forward, backward, 
    % to the left, to the right and to rotate. This callback function is for moving the 
    % robot backward. The wheel joint handles are collected from the simulator, then with
    % the use of the simxSetJointTargetVelocity() function, each wheels are moved.
    
    % Since in this specific case we want the robot base to move backward, each velocity
    % should be defined by a negative number.
        
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        [r1,w1] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fl', sim.simx_opmode_blocking);
        [r2,w2] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_blocking);
        [r3,w3] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_blocking);
        [r4,w4] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_blocking);
    
        sim.simxSetJointTargetVelocity(clientID,w1,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w2,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w3,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w4,-20,sim.simx_opmode_streaming);
    
    
    % --- Executes on button press in pushbutton5.
    function pushbutton5_Callback(hObject, eventdata, handles)
    % The base is moved by a joystick, which includes buttons to move forward, backward, 
    % to the left, to the right and to rotate. This callback function is for moving the 
    % robot to the right. The wheel joint handles are collected from the simulator, then with
    % the use of the simxSetJointTargetVelocity() function, each wheels are moved.
    
    % Since in this specific case we want the robot base to move right, the velocity
    % should be defined with positive numbers for the front left and rear right, and with 
    % negative number for the rear left and front right.
        
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        [r1,w1] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fl', sim.simx_opmode_blocking);
        [r2,w2] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_blocking);
        [r3,w3] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_blocking);
        [r4,w4] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_blocking);
    
        sim.simxSetJointTargetVelocity(clientID,w1,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w2,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w3,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w4,-20,sim.simx_opmode_streaming);
    
    
    % --- Executes on button press in pushbutton6.
    function pushbutton6_Callback(hObject, eventdata, handles)
    % The base is moved by a joystick, which includes buttons to move forward, backward, 
    % to the left, to the right and to rotate. This callback function is for moving the 
    % robot to the left. The wheel joint handles are collected from the simulator, then with
    % the use of the simxSetJointTargetVelocity() function, each wheels are moved.
    
    % Since in this specific case we want the robot base to move left, the velocity
    % should be defined with negative numbers for the front left and rear right, and with 
    % positive number for the rear left and front right.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        [r1,w1] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fl', sim.simx_opmode_blocking);
        [r2,w2] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_blocking);
        [r3,w3] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_blocking);
        [r4,w4] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_blocking);
    
        sim.simxSetJointTargetVelocity(clientID,w1,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w2,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w3,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w4,20,sim.simx_opmode_streaming);
    
    
    % --- Executes on button press in pushbutton7.
    function pushbutton7_Callback(hObject, eventdata, handles)
    % The base is moved by a joystick, which includes buttons to move forward, backward, 
    % to the left, to the right and to rotate. This callback function is for rotating the 
    % robot. The wheel joint handles are collected from the simulator, then with
    % the use of the simxSetJointTargetVelocity() function, each wheels are moved.
    
    % Since in this specific case we want the robot base to rotate, the velocity
    % should be defined with negative numbers for the front left and rear left, and with 
    % negative number for the rear right and front right.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        [r1,w1] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fl', sim.simx_opmode_blocking);
        [r2,w2] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_blocking);
        [r3,w3] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_blocking);
        [r4,w4] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_blocking);
    
        sim.simxSetJointTargetVelocity(clientID,w1,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w2,-20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w3,20,sim.simx_opmode_streaming);
        sim.simxSetJointTargetVelocity(clientID,w4,20,sim.simx_opmode_streaming);
    
    
    % --- Executes on button press in pushbutton8.
    function pushbutton8_Callback(hObject, eventdata, handles)
    % The base is moved by a joystick, which includes buttons to move forward, backward, 
    % to the left, to the right and to rotate. This callback function is for stopping the 
    % robot. The wheel joint handles are collected from the simulator, then with
    % the use of the simxSetJointTargetVelocity() function, each wheels are moved.
    
    % Since in this specific case we want the robot base to stop, the velocity for each wheels
    % should be defined as 0.
    
        sim=remApi('remoteApi'); % using the prototype file (remoteApiProto.m)
        sim.simxFinish(-1); % just in case, close all opened connections
        clientID=sim.simxStart('127.0.0.1',19999,true,true,5000,5);
        
        [r1,w1] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fl', sim.simx_opmode_blocking);
        [r2,w2] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rl', sim.simx_opmode_blocking);
        [r3,w3] = sim.simxGetObjectHandle(clientID, 'rollingJoint_rr', sim.simx_opmode_blocking);
        [r4,w4] = sim.simxGetObjectHandle(clientID, 'rollingJoint_fr', sim.simx_opmode_blocking);
    
        sim.simxSetJointTargetVelocity(clientID,w1,0,sim.simx_opmode_blocking);
        sim.simxSetJointTargetVelocity(clientID,w2,0,sim.simx_opmode_blocking);
        sim.simxSetJointTargetVelocity(clientID,w3,0,sim.simx_opmode_blocking);
        sim.simxSetJointTargetVelocity(clientID,w4,0,sim.simx_opmode_blocking);
    