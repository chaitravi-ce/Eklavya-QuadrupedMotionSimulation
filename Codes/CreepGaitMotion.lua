--Lua Script
--Non-threaded Associated Child Script

function sysCall_init()

    --Leg lengths
    l1 = 0.074948
    l2 = 0.097066
    l3 = 0.184358

    --Step change
    step = 0.001

    --Initial phase
    phase = 0

    --Initial Co-ordinates of each leg
    x4 = 0.172161
    y4 = 0
    z4 = 0.184358
    x1 = 0.149118
    y1 = 0.0806408
    z1 = 0.184358
    x2 = 0.149118
    y2 = -0.0806408
    z2 = 0.184358
    x3 = 0.172161
    y3 = 0
    z3 = 0.184358

    --Initial sub-phases
    inphase1 = 1
    inphase3 = 1
    inphase4 = 1
    inphase6 = 1

    --Getting object Handles
    j1=sim.getObjectHandle('rw_joint1#6')
    j2=sim.getObjectHandle('rw_joint2#6')
    j3=sim.getObjectHandle('rw_joint3#6')
    j4=sim.getObjectHandle('rw_joint4#6')
    
    j5=sim.getObjectHandle('rw_joint1#4')
    j6=sim.getObjectHandle('rw_joint2#4')
    j7=sim.getObjectHandle('rw_joint3#4')
    j8=sim.getObjectHandle('rw_joint4#4')
    
    j9=sim.getObjectHandle('rw_joint1#0')
    j10=sim.getObjectHandle('rw_joint2#0')
    j11=sim.getObjectHandle('rw_joint3#0')
    j12=sim.getObjectHandle('rw_joint4#0')
    
    j13=sim.getObjectHandle('rw_joint1#5')
    j14=sim.getObjectHandle('rw_joint2#5')
    j15=sim.getObjectHandle('rw_joint3#5')
    j16=sim.getObjectHandle('rw_joint4#5')
end
 
function sleep(n)
  if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end
 
function sysCall_actuation()

    --Setting initial position
    if(phase == 0) then
        set_angle(1,x1,y1,z1)
        set_angle(2,x2,y2,z2)
        set_angle(3,x3,y3,z3)
        set_angle(4,x4,y4,z4)
        phase = 1
    end
    --1st Leg movement
    if(phase == 1) then
        --0 0 90 to 0 -45 90
        if(inphase1 == 1) then
            print('in in phase1')
            x3 = x3 + step
            z3 = z3 - step*1.2
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(x3 >= 0.274024) then
                inphase1 = 2
                print(x3..'x:0.274024')
                print(y3..'y:0')
                print(z3..'z:0.0617002')
            end
        end
        --0 -45 90 to 45 0 90
        if(inphase1 == 2) then
            print('in in phase 2')
            x3 = x3 - step*1.2598
            y3 = y3 + step
            z3 = z3 + step*1.0118
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(y3 >= 0.121) then
                print(x3..'x:0.121785')
                print(y3..'y:0.121688')
                print(z3..'z:0.184358')
                inphase1 = 1
                phase = 2
            end
        end
    end
    --Forward Movement
    if(phase == 2) then
        print('in phase 2')
        --leg 3
        x3 = x3 + step*0.685
        y3 = y3 - step*1.01
        z3 = z3
        --leg 2
        x2 = x2 + step*0.575
        y2 = y2 + step*2.015
        z2 = z2
        --leg 4
        x4 = x4 - step*0.57
        y4 = y4 - step*2.19
        z4 = z4
        --leg 1
        x1 = x1 - step*0.685
        y1 = y1 + step*1.026
        z1 = z1
        set_angle(1,x1,y1,z1)
        set_angle(2,x2,y2,z2)
        set_angle(3,x3,y3,z3)
        set_angle(4,x4,y4,z4)
        if(y3 <= 0.0806408) then
            print(x3..' x3:0.149118')
            print(y3..' y3:0.08060408')
            print(z3..' z3:0.184358')
            print(x2..' x2:0.172161')
            print(y2..' y2:0')
            print(z2..' z2:0.184358')
            print(x4..' x4:0.149118')
            print(y4..' y4:-0.0860408')
            print(z4..' z4:0.184568')
            print(x1..' x1:0.121785')
            print(y1..' y1:0.121688')
            print(z1..' z1:0.184358')
            phase = 3
        end
    end
    --Leg Movement
    if(phase == 3) then
        if(inphase3 == 1) then
            print('in in phase 1')
            --leg 1
            x1 = x1 + step*1.259
            y1 = y1 - step*1.007
            z1 = z1 - step*1.0135
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(y1<=0) then
                print(x1..' x1:0.274024')
                print(y1..' y1:0')
                print(z1..' z1:0.0617002')
                inphase3 = 2
                y1 = 0
            end
        end
        if(inphase3 == 2) then
            print('in in phase 2')
            --leg 1
            x1 = x1 - step*0.698
            y1 = y1
            z1 = z1 + step*0.84
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(z1 >= 0.184358) then
                print(x1..' x1:0.172161')
                print(y1..' y1:0')
                print(z1..' z1:0.184358')
                z1 = 0.184358
                inphase3 = 1
                phase = 4
            end
        end
    end
    --Leg Movement
    if(phase == 4) then
        if(inphase4 == 1) then
            print('in in phase 1 4')
            --leg 2
            x2 = x2 + step*0.698
            z2 = z2 - step*0.84
            y2 = y2
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(z2 <= 0.0618002) then
                print(x2..' x1:0.274024')
                print(y2..' y1:0')
                print(z2..' z1:0.0617002')
                inphase4 = 2
            end
        end
        if(inphase4 == 2) then
            print('in in phase 2 4')
            --leg 2
            x2 = x2 - step*1.235
            y2 = y2 - step*0.985
            z2 = z2 + step
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(z2 >= 0.1839) then
                print(x2..' x1:0.121785')
                print(y2..' y1:-0.121688')
                print(z2..' z1:0.184358')
                inphase4 = 1
                phase = 5
            end
        end
    end
    --Forward Movement
    if(phase == 5) then
        print('in phase 5')
        --leg 1
        x1 = x1 - step*0.27
        y1 = y1 + step
        z1 = z1
        --leg 2
        x2 = x2 + step*0.33
        y2 = y2 + step*0.44
        z2 = z2
        --leg 3
        x3 = x3 + step*0.275
        y3 = y3 - step*0.98
        z3 = z3
        --leg 4 
        x4 = x4 - step*0.3285
        y4 = y4 - step*0.4055
        z4 = z4
        set_angle(1,x1,y1,z1)
        set_angle(2,x2,y2,z2)
        set_angle(3,x3,y3,z3)
        set_angle(4,x4,y4,z4)
        if(y1>=0.0840)then
            print(x4..' x4:0.121785')
            print(y4..' y4:-0.121688')
            print(z4..' z4:0.184568')
            print(x3..' x3:0.172161')
            print(y3..' y3:0')
            print(z3..' z3:0.184358')
            print(x2..' x2:0.149118')
            print(y2..' y2:-0.0840608')
            print(z2..' z2:0.184358')
            print(x1..' x1:0.149118')
            print(y1..' y1:0.0840608')
            print(z1..' z1:0.184358')
            phase = 6
        end
    end
    --Leg Movement
    if(phase == 6) then
        if(inphase6 == 1)then
            print('in in phase 1 6')
            x4 = x4 + step*1.0015
            y4 = y4 - step
            z4 = z4 - step*1.703
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(y4<=-0.193) then
                inphase6 = 2
                print(x4..'x4:0.193841')
                print(y4..'y4:-0.193687')
                print(z4..'z4:0.0617002')
            end
        end
        if(inphase6 == 2) then
            print('in in phase 2 6')
            x4 = x4 + step*0.413
            y4 = y4 + step
            z4 = z4 
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(y4>=-0.000001) then
                inphase6 = 3
                print(x4..'x4:0.274024')
                print(y4..'y4:0')
                print(z4..'z4:0.00617002')
            end
        end
        if(inphase6 == 3) then
            print('in in phase 3 6')
            x4 = x4 - step*0.828
            y4 = y4
            z4 = z4 + step
            set_angle(1,x1,y1,z1)
            set_angle(2,x2,y2,z2)
            set_angle(3,x3,y3,z3)
            set_angle(4,x4,y4,z4)
            if(z4>=0.1838) then
                inphase6 = 1
                phase = 7
                print(x4..'x4:0.172161')
                print(y4..'y4:0')
                print(z4..'z4:0.184358')
            end
        end
    end
    --Resetting co-ordinates
    if(phase == 7) then
        x4 = 0.172161
        y4 = 0
        z4 = 0.184358
        x1 = 0.149118
        y1 = 0.0806408
        z1 = 0.184358
        x2 = 0.149118
        y2 = -0.0806408
        z2 = 0.184358
        x3 = 0.172161
        y3 = 0
        z3 = 0.184358
        phase = 0
    end
end

--Inverse Kinematics Calculations
set_angle = function(jNo,x,y,z)
    jointNo = jNo
    angle1 = math.atan(y/x)
    fx = (x*math.cos(angle1) + y*math.sin(angle1))
    A = (-z)
    B = l1-fx
    D = (2*l1*fx + l3*l3 - l2*l2 - l1*l1 - z*z - fx*fx)/(2*l2)
    r = math.sqrt(A*A + B*B)
    alpha = math.atan2(B,A)
    angle2 = math.atan2(D, -math.sqrt(math.abs(r*r - D*D))) - alpha
    angle3 = math.atan2((z-l2*math.sin(angle2)),(fx - l2*math.cos(angle2) - l1))-angle2
    set_position(jointNo,angle1, angle2, angle3)
end

--Setting angles of servos
set_position = function(jointNo,angle1,angel2,angle3)
    if(jointNo == 1)then
        s1 = sim.setJointPosition(j1, angle1)
        s2 = sim.setJointPosition(j2, angle2)
        s3 = sim.setJointPosition(j3, angle3)
        s4 = sim.setJointPosition(j4, 0*math.pi/180)
    end
    if(jointNo == 2)then
        s1 = sim.setJointPosition(j5, angle1)
        s2 = sim.setJointPosition(j6, angle2)
        s3 = sim.setJointPosition(j7, angle3)
        s4 = sim.setJointPosition(j8, 0*math.pi/180)
    end
    if(jointNo == 3)then
        s1 = sim.setJointPosition(j9, angle1)
        s2 = sim.setJointPosition(j10, angle2)
        s3 = sim.setJointPosition(j11, angle3)
        s4 = sim.setJointPosition(j12, 0*math.pi/180)
    end
    if(jointNo == 4)then
        s1 = sim.setJointPosition(j13, angle1)
        s2 = sim.setJointPosition(j14, angle2)
        s3 = sim.setJointPosition(j15, angle3)
        s4 = sim.setJointPosition(j16, 0*math.pi/180)
    end
end