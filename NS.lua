function  slowPrint(text, time)
  -- Slow printing(80s computers effect)
  for i = 1, text:len() do
    io.write(text:sub(i, i))
    sleep(time)
  end
  io.write("\n")
  end
  
slowPrint("PROGRAMM STARTED", .1)
os.sleep(1)

function timer_missile()

  os.sleep(3)
  for i = 0, 60 do
    term.clear()
    term.setCursorPos(5, 10)
    
    -- timer_monitor.clear()  <---- using monitor by peripheral cables
    -- timer_monitor.setCursorPos(1, 2)
    -- timer_monitor.setTextScale(3)
    -- timer_monitor
    
    
    
  end
  
  slowPrint("PRESS ENTER TO START", .1)
  read()
  
  print("AUTO-RELOADING...")
  rs.setOutput("right", true)
  os.sleep(.5)
  redstone.setOutput("right", false)
  slowPrint("DONE!", 0.1)
  os.sleep(1)
  
  slowPrint("STARTING...", .01)
  rs.setOutput("back", true)
  os.sleep(0.5)
  redstone.setOutput("back", false)
  slowPrint("STARTED!", .01)
  
  print("RELOADING MISSILE..")
  rs.setOutput("right", true)
  os.sleep(0.1)
  rs.setOutput("right", false)
  
  slowPrint("RELOADED!", 0.1)
  menu()
  
  end

function menu()
  term.clear()
  slowPrint("============Nuclear Striker============", .01)
  slowPrint("                         by Ma3rX", .01)
  slowPrint("Press Enter to START", .1)
  read()
  timer_missile()
  
  end

menu()
