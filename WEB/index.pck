GDPC                                                                                 H   res://.import/playerShip2_red.png-576384ec137a87fdce073f389a03f52d.stex �D      �      Hq�biF�- ��V��U�   res://Characters/Player.tscn�      �      �c�ٻ`dq�~�t�   res://Scenes/Lvl1.tscn  �#      g      hԏ�}c3no ;/$   res://Scenes/ast_gen.tscn    /      �       ���m��,��fL�   res://Scripts/Lvl1.gd.remap P`      '       W	�챦K���[f+�   res://Scripts/Lvl1.gdc  �/      \      �`hDU����}�,j<    res://Scripts/Player.gd.remap   �`      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc@1      �	      ���,����^���    res://Scripts/asteroids.gd.remap�`      ,       }T�,gu��VV   res://Scripts/asteroids.gdc ;      r      �Lr��
s�"���E�$   res://Scripts/drone_creator.gd.remap�`      0       f��~Iކkb���|     res://Scripts/drone_creator.gdc �=      ;      ��e�\C�s�:���     res://Scripts/star_gen.gd.remap a      +       �����������xW~   res://Scripts/star_gen.gdc  �B      �      �,p� ۪r�!̪�vR�4   res://Textures/Characters/playerShip2_red.png.import�]      �      �E�njkf�\J#�5e�   res://icon.png  @a      �      �~dg`!����I�҃   res://project.binary�n      m      :8_x�lL��1)�            [gd_scene load_steps=13 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://Textures/Characters/playerShip2_red.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]

custom_solver_bias = 0.0
radius = 60.0

[sub_resource type="Gradient" id=2]

offsets = PoolRealArray( 0, 1 )
colors = PoolColorArray( 0.0898438, 0.0898438, 0.0898438, 1, 0.742188, 0.742188, 0.742188, 0 )

[sub_resource type="GradientTexture" id=3]

flags = 4
gradient = SubResource( 2 )
width = 2048

[sub_resource type="ParticlesMaterial" id=4]

render_priority = 0
trail_divisor = 1
emission_shape = 1
emission_sphere_radius = 30.0
flag_align_y = false
flag_rotate_y = false
flag_disable_z = true
spread = 20.0
flatness = 0.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 10.0
initial_velocity_random = 0.0
angular_velocity = 5.32493e-44
angular_velocity_random = 0.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = 0.0
linear_accel_random = 1.0
radial_accel = 0.0
radial_accel_random = 0.0
tangential_accel = 0.0
tangential_accel_random = 0.0
damping = 0.0
damping_random = 0.0
angle = 180.0
angle_random = 1.0
scale = 20.0
scale_random = 1.0
color_ramp = SubResource( 3 )
hue_variation = 0.0
hue_variation_random = 0.0
anim_speed = 0.0
anim_speed_random = 0.0
anim_offset = 0.0
anim_offset_random = 0.0
anim_loop = false
_sections_unfolded = [ "Color", "Emission Shape", "Initial Velocity", "Scale", "Spread", "Trail" ]

[sub_resource type="Gradient" id=5]

offsets = PoolRealArray( 0, 0.341317, 0.778443, 1 )
colors = PoolColorArray( 1, 1, 1, 1, 0.933594, 0.816866, 0.0547028, 0.867412, 0.945313, 0.0258484, 0.0258484, 0.77349, 0.851563, 0.312657, 0.0765076, 0 )

[sub_resource type="GradientTexture" id=6]

flags = 4
gradient = SubResource( 5 )
width = 2048

[sub_resource type="ParticlesMaterial" id=7]

render_priority = 0
trail_divisor = 1
emission_shape = 1
emission_sphere_radius = 18.0
flag_align_y = false
flag_rotate_y = false
flag_disable_z = true
spread = 4.0
flatness = 0.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 8.0
initial_velocity_random = 0.0
angular_velocity = 5.32493e-44
angular_velocity_random = 0.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = 0.0
linear_accel_random = 0.0
radial_accel = 0.0
radial_accel_random = 0.0
tangential_accel = 0.0
tangential_accel_random = 0.0
damping = 0.0
damping_random = 0.0
angle = 180.0
angle_random = 1.0
scale = 26.0
scale_random = 1.0
color_ramp = SubResource( 6 )
hue_variation = 0.0
hue_variation_random = 0.12
anim_speed = 0.0
anim_speed_random = 0.0
anim_offset = 0.0
anim_offset_random = 0.0
anim_loop = false
_sections_unfolded = [ "Color", "Emission Shape", "Initial Velocity", "Scale", "Spread" ]

[sub_resource type="Gradient" id=8]

offsets = PoolRealArray( 0, 0.197605, 0.622755, 0.982036 )
colors = PoolColorArray( 1, 1, 1, 1, 0.579453, 0.877386, 0.957031, 0.654545, 0.211487, 0.222281, 0.902344, 0.820364, 0.589844, 0.571411, 0.516113, 0 )

[sub_resource type="GradientTexture" id=9]

flags = 4
gradient = SubResource( 8 )
width = 2048

[sub_resource type="ParticlesMaterial" id=10]

render_priority = 0
trail_divisor = 1
emission_shape = 1
emission_sphere_radius = 18.0
flag_align_y = false
flag_rotate_y = false
flag_disable_z = true
spread = 20.0
flatness = 0.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 90.0
initial_velocity_random = 0.0
angular_velocity = 5.32493e-44
angular_velocity_random = 0.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = 0.0
linear_accel_random = 0.0
radial_accel = 100.0
radial_accel_random = 0.0
tangential_accel = 0.0
tangential_accel_random = 0.0
damping = 0.0
damping_random = 0.0
angle = 180.0
angle_random = 1.0
scale = 26.0
scale_random = 1.0
color_ramp = SubResource( 9 )
hue_variation = 0.0
hue_variation_random = 0.12
anim_speed = 0.0
anim_speed_random = 0.0
anim_offset = 0.0
anim_offset_random = 0.0
anim_loop = false
_sections_unfolded = [ "Color", "Radial Accel" ]

[node name="Player" type="KinematicBody2D"]

input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
script = ExtResource( 1 )
_sections_unfolded = [ "Collision", "Transform", "collision" ]
thrust = 300
max_spd = 4
turn_spd = 2.6

[node name="PlayerCol" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="." index="1"]

anchor_mode = 1
rotating = false
current = true
zoom = Vector2( 1.4, 1.4 )
limit_left = -10000000
limit_top = -10000000
limit_right = 10000000
limit_bottom = 10000000
limit_smoothed = false
drag_margin_h_enabled = true
drag_margin_v_enabled = true
smoothing_enabled = true
smoothing_speed = 30.0
offset_v = 0.0
offset_h = 0.0
drag_margin_left = 0.1
drag_margin_top = 0.1
drag_margin_right = 0.1
drag_margin_bottom = 0.1
editor_draw_screen = true
editor_draw_limits = false
editor_draw_drag_margin = false
_sections_unfolded = [ "Drag Margin", "Smoothing" ]

[node name="Smoke" type="Particles2D" parent="." index="2"]

modulate = Color( 1, 1, 1, 0.099451 )
position = Vector2( -39, -3.40949e-06 )
rotation = 3.14159
emitting = false
amount = 2000
lifetime = 1.4
one_shot = false
preprocess = 0.0
speed_scale = 0.3
explosiveness = 0.0
randomness = 0.0
fixed_fps = 0
fract_delta = true
visibility_rect = Rect2( -100, -100, 200, 200 )
local_coords = false
draw_order = 0
process_material = SubResource( 4 )
texture = null
normal_map = null
h_frames = 1
v_frames = 1
_sections_unfolded = [ "Drawing", "Process Material", "Time" ]

[node name="Fire" type="Particles2D" parent="." index="3"]

modulate = Color( 1, 1, 1, 0.121529 )
position = Vector2( -39, -3.40949e-06 )
rotation = 3.14159
emitting = false
amount = 500
lifetime = 0.2
one_shot = false
preprocess = 0.0
speed_scale = 0.8
explosiveness = 0.0
randomness = 0.0
fixed_fps = 0
fract_delta = true
visibility_rect = Rect2( -100, -100, 200, 200 )
local_coords = false
draw_order = 0
process_material = SubResource( 7 )
texture = null
normal_map = null
h_frames = 1
v_frames = 1
_sections_unfolded = [ "Process Material", "Time", "Visibility" ]

[node name="Boost" type="Particles2D" parent="." index="4"]

modulate = Color( 1, 1, 1, 0.121529 )
position = Vector2( -39, -3.40949e-06 )
rotation = 3.14159
emitting = false
amount = 3000
lifetime = 0.3
one_shot = true
preprocess = 0.0
speed_scale = 1.0
explosiveness = 0.23
randomness = 0.0
fixed_fps = 0
fract_delta = true
visibility_rect = Rect2( -100, -100, 200, 200 )
local_coords = false
draw_order = 0
process_material = SubResource( 10 )
texture = null
normal_map = null
h_frames = 1
v_frames = 1
_sections_unfolded = [ "Process Material", "Time", "Transform", "Visibility" ]

[node name="Sprite" type="Sprite" parent="." index="5"]

rotation = 1.5708
texture = ExtResource( 2 )
_sections_unfolded = [ "Transform" ]

[node name="Tween" type="Tween" parent="." index="6"]

repeat = false
playback_process_mode = 1
playback_speed = 1.0
playback/active = false
playback/repeat = false
playback/speed = 1.0

[node name="RayCast2D" type="RayCast2D" parent="." index="7"]

enabled = true
exclude_parent = true
cast_to = Vector2( 1000, 0 )
collision_mask = 1

[node name="sounds" type="Node2D" parent="." index="8"]

[node name="thrust" type="AudioStreamPlayer" parent="sounds" index="0"]

stream = null
volume_db = 0.0
autoplay = false
mix_target = 0
bus = "Master"

[node name="boost" type="AudioStreamPlayer" parent="sounds" index="1"]

stream = null
volume_db = 0.0
autoplay = false
mix_target = 0
bus = "Master"

[node name="laser" type="AudioStreamPlayer" parent="sounds" index="2"]

stream = null
volume_db = 0.0
autoplay = false
mix_target = 0
bus = "Master"

[node name="Timer" type="Timer" parent="." index="9"]

process_mode = 1
wait_time = 0.1
one_shot = true
autostart = false

[connection signal="timeout" from="Timer" to="." method="fire_cooldown"]


              [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/Lvl1.gd" type="Script" id=1]
[ext_resource path="res://Scripts/star_gen.gd" type="Script" id=2]
[ext_resource path="res://Scenes/ast_gen.tscn" type="PackedScene" id=3]
[ext_resource path="res://Characters/Player.tscn" type="PackedScene" id=4]
[ext_resource path="res://Scripts/drone_creator.gd" type="Script" id=5]

[node name="Lvl1" type="Node2D" index="0"]

script = ExtResource( 1 )

[node name="parallax_bg" type="ParallaxBackground" parent="." index="0"]

layer = -1
offset = Vector2( 0, 0 )
rotation = 0.0
scale = Vector2( 1, 1 )
transform = Transform2D( 1, 0, 0, 1, 0, 0 )
scroll_offset = Vector2( 0, 0 )
scroll_base_offset = Vector2( 0, 0 )
scroll_base_scale = Vector2( 1, 1 )
scroll_limit_begin = Vector2( 0, 0 )
scroll_limit_end = Vector2( 0, 0 )
scroll_ignore_camera_zoom = false
_sections_unfolded = [ "Pause", "Scroll" ]

[node name="far" type="ParallaxLayer" parent="parallax_bg" index="0"]

motion_scale = Vector2( 0.01, 0.01 )
motion_offset = Vector2( 0, 0 )
motion_mirroring = Vector2( 0, 0 )
_sections_unfolded = [ "Motion" ]

[node name="star_gen" type="Node2D" parent="parallax_bg/far" index="0"]

script = ExtResource( 2 )
_sections_unfolded = [ "Transform" ]
number = 800

[node name="med" type="ParallaxLayer" parent="parallax_bg" index="1"]

scale = Vector2( 1.5, 1.5 )
motion_scale = Vector2( 0.06, 0.06 )
motion_offset = Vector2( 0, 0 )
motion_mirroring = Vector2( 0, 0 )
_sections_unfolded = [ "Motion", "Transform" ]

[node name="star_gen2" type="Node2D" parent="parallax_bg/med" index="0"]

script = ExtResource( 2 )
number = 1400

[node name="close" type="ParallaxLayer" parent="parallax_bg" index="2"]

scale = Vector2( 2, 2 )
motion_scale = Vector2( 0.09, 0.09 )
motion_offset = Vector2( 0, 0 )
motion_mirroring = Vector2( 0, 0 )
_sections_unfolded = [ "Motion", "Transform" ]

[node name="star_gen3" type="Node2D" parent="parallax_bg/close" index="0"]

script = ExtResource( 2 )
number = 1800

[node name="asteroids" type="ParallaxLayer" parent="parallax_bg" index="3"]

scale = Vector2( 2, 2 )
motion_scale = Vector2( 0.16, 0.16 )
motion_offset = Vector2( 0, 0 )
motion_mirroring = Vector2( 0, 0 )
_sections_unfolded = [ "Motion", "Transform" ]

[node name="ast_gen" parent="parallax_bg/asteroids" index="0" instance=ExtResource( 3 )]

_sections_unfolded = [ "Transform" ]
number = 300

[node name="bullets" type="Node2D" parent="." index="1"]

[node name="player" parent="." index="2" instance=ExtResource( 4 )]

position = Vector2( 0.790283, 3.55145 )
thrust = 1500
max_spd = 8
turn_spd = 7.0

[node name="drone_creator" type="Node2D" parent="." index="3"]

script = ExtResource( 5 )

[node name="Timer" type="Timer" parent="drone_creator" index="0"]

process_mode = 1
wait_time = 3.0
one_shot = false
autostart = false

[connection signal="timeout" from="drone_creator/Timer" to="drone_creator" method="_spawn"]


         [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/asteroids.gd" type="Script" id=1]

[node name="ast_generator" type="Node2D"]

script = ExtResource( 1 )
number = 500


     GDSC   	      	   )      ���ӄ�   �����Ķ�   �������Ӷ���   �������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   �������Ӷ���   ���¶���      player     	   ui_cancel��                                           %      '   	   5TT7=�  �  LMTT3�  L�  MR�  &�  P�  L�  MR�  �  LMP�  LM�  0�  [    GDSC   )      G   �     ������������τ�   �����¶�   ������Ҷ   �������Ҷ���   �������Ŷ���   �������Ӷ���   ��������Ӷ��   ����������������¶��   ���Ӷ���   ����ض��   ���¶���   ���������Ŷ�   ��������¶��   ��ڶ   ��¶   ��Ŷ   ��ն   ������Ӷ   ����Ķ��   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ������Ҷ   ߶��   �������Ѷ���   ���������������������Ҷ�   �������������������϶���   ������ٶ   ����ض��   ������������   �������ⶶ��   ����¶��   ����������������������Ҷ   ����������������������Ҷ   �������Ӷ���   �������ض���   ���������¶�   ��������Ҷ��   �������ض���   ������������ض��  ,                 ������@      Smoke        Fire      Tween     	   RayCast2D         res://Scenes/PlayerLaser.tscn         Boost                                gp_turn_left      gp_turn_right        gp_forwards       gp_boost      vel            �������?               bullets       Timer                      	                        &      0   	   9   
   B      K      T      U      \      a      h      o      t      y      z      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,     -     .   !  /   "  0   +  1   ,  2   .  3   /  4   :  5   C  6   I  7   W  8   [  9   d  :   e  ;   f  <   g  =   k  >   q  ?   w  @   {  A   |  B   �  C   �  D   �  E   �  F   �  G   5TT:=�  T:=�  �  T:=�  �  TT7=�  H�  L�  MN�  L�  MIT7=�  �  LMP�  T7=�	  �  L�  MT7=�
  �  L�  MT7=�  ?L�  MT7=�  �  L�  MTT=�  �  LMT=�  �	  T=�  �  LMT=�  �  LMT=�  �
  T=�  �  TT3�  L�  MRT�  &�  P�  L�  MR�  �  �  �  �  �  &�  P�  L�  MR�  �  �  �  �  �  �  &�  P�  L�  MR�  �  �  L�  N�	  MP�  L�  M�  )�  �  R�  �  P�  �
  �  (R�  �  �  L�	  N�	  M�  )�  �  R�  �  P�  �  �  �  &�  P�  L�  MR�  �	  P�  LN�  N�  N�
  P�  P�  L�  M�  N�  N�  P�  N�  P�  M�  �	  P�   LM�  �  P�  �
  �  �  &�  P�  L�  MR�  �  0�  �  &�  P�!  L�  MR�  �  0�  �  &�  P�"  L�  M�  R�  =�  �  P�#  LM�  �  P�$  �$  �  �%  LMP�  L�  MP�&  L�  M�  �  �  �  �  L�  MP�   LM�  �  �  �  �'  �  �  �  �  �  �  �  �  �  �  �$  �  TT3�(  LMR�  �  �
  TTTT[              GDSC            m      ���ӄ�   ������϶   �������Ӷ���   �����Ķ�   �����϶�   ߶��   ��۶   ��¶   ��������������Ҷ   �������ض���   �������ض���   ��������Ҷ��      res://Scenes/ast_factory.tscn                        �                 8        h                                                 &      3   	   =   
   \      g      5TT7=�  ?LMP�  LMT:=�  �  TT3�  LMR�  )�  �@  L�  MR�  =�  �  L�!  L�  N�  MM�  =�  �  P�  L�  M�  �  P�	  �  L�!  L�  �  N�  �  MN�!  L�  �  N�  �  MM�  �  P�
  �!  L�  N�  M�  �  L�  M[              GDSC         !   �      ���ӄ�   ����Ķ��   �������Ӷ���   ��������Ŷ��   �����Ķ�   ���������¶�   �����϶�   ����¶��   �����ض�   �����Ŷ�   ��������������¶   ��۶   ߶��   ����Ӷ��   �������Ӷ���   �������ض���   ��������Ҷ��   ��������Ӷ��   ��������¶��   ���϶���   ������Ӷ   �������Ӷ���   ���������Ӷ�      Timer        res://Scenes/drone.tscn       player              
         �                 8        ������!@               drone        hit other drone    
   hit player        Laser         pew                                "      #      )      /   	   0   
   1      7      >      K      T      ]      |      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   5TT7=�  �  LMT7=�  ?L�  MT7=�  �  LMP�  L�  MTT3�  LMR�  �  P�  LM�  TT3�  LMR�  =�	  �
  LM�  =�  �  L�!  L�  N�  MM�  )�  �@  L�  MR�  =�  �  P�  LM�  �  P�  �  L�!  L�  �  N�  �  MN�!  L�  �  N�  �  MM�  �  L�  M�  �  �  P�  �!  L�  N�  M�  &�	  	�	  R�  �  P�  LMTT3�  L�  N�  MR�  =�  �  P�  LM�  &�
  �  R�  �7  L�  M�  &�  �  R�  �7  L�  M�  &�  �  R�  �7  L�  M�  �  P�  LM�  �  P�  LM�  0[     GDSC   	      
   P      ���ӄ�   �������Ŷ���   �����Ķ�   �����϶�   ߶��   ���Ķ���   �������Ӷ���   �������ض���   ��������Ҷ��      res://Scenes/star.tscn             �                 8                                                 "      +   	   J   
   5TT7=�  ?LMT:=�  �  TT3�  LMR�  )�  �@  L�  MR�  =�  �  P�  LM�  �  P�  �  L�!  L�  �  N�  �  MN�!  L�  �  N�  �  MM�  �  L�  M[         GDSTp   K           �  PNG �PNG

   IHDR   p   K   �]%  xIDATx�ݝ{l�}�?���OQzP�Lْ,#��4�S�V ���r��j����� iQ mL91�	���@Xi}�8�Em�ދ{Mۑl��-�vm�J"EJ"Ň��c_3sN�؝�3��K�Y���3;gf�����~g��-���~�T�3˲ ��ZX��gnSJ����~��M;�͆��O`#�y��Rʡ(y R������ۛ{b��-I�;���)%�e��zzz�������=��'<�m�>�G?�3�xlI��Z#�l�R��R���έ�������w0�����g��ز
!B�=� hii`�B\��M򓓴����B��U��#0z�}"�P�4���׉D����۔ROݹ3�\l9�ਔ�mۤ�i._�p�f�q��9�j����غ���<{�,��j}s���������礔�}��?�bF���O?�ݺ�z��2�/U+�c&��ӭ�-G��yx��WJ=%�����B"� j-��̷��(nt����煬Ϸ�[.�./�|ߏ��t�ׄ���	��qp]w��� �����V���ӂ~��
�Rڶ�m�f��$T���!
?6���'��?�"Fݧq��jQ��R]��55����뺸�������	����!�s!�Q˲�|��ݧs�a�'�������/�d�g}�p����^��/��@�����s?fi�C���!��+Wp����&t]w���٫׫���1�����?��V���1��>��x0��[�kKJ��Ɋ����Q�Z�eY'��j�'E9���I�+	�:|j���~&��򓓡�Yks3�����ގ]n���(�X�ƕ�`�O���՝�u��GU닒��qy��߾z��R��0��[I�:���Y����	/����92><��)}�f���}>��i��zô�� ����B�m��L]�W��-˶,�o!�E�ly��J�� T�K�� ��v�
�XB�!V����d!L�?������F_�������1 �+�o��D�%����S�%�@���tw�s[[�8flK&\u��;)R�Y��[o���ع���f��M���A�'�v_�d�g	�����K�����/��ħF�w^| �r�n��xZcIA��� �{��}�v zZ��}._���d��q��=�~�­�Po]���-��S��M���G��O��{x����n �S��f��·D����K$yIKҔ�Ƶ������������;2��-ˢ���<��CR�v�<��B�@!>U�xG	����! /c�o�+j* �k�{B�!����`C�a}��e���Z�2J�:��^�ќ	��sǎ�L�	��Q���^ߧA�I�|W*��&���7zԶ�i)� �T��ݻI�g{v���������t��rvԜ����|Uf��+�����+����ʉ��ߚcl����i5*�~��bn]�{��W�k�>�M���l�/KR��X)��}�mYB@ْ����ޝ;)xy�`[:"/Z}��O��q3��>�������@�߳�]��\�6���tB���ߛ�q����F���B`\fiBkeZa{�J����=��ݹ��]>��b!���|D�و�*MLy���$��c�הL��$%O����I�y��������=H%�1�5�I�����"�y�E\��Ŵ8��,Z�����������7 �躁�ZB��9:�)l�bܳ����u�߅pl�-�<~�:�ڐR��5,�~����w�>%okņx;�%���!䐐b[G[�>���L:lA���>gi��+W���I����4�Ψ�����Rx�g/����#T��	�Ȇ�}?i3����]�y2F<ʳ1��y������6����v��b�S�����'�}�$��,l#F��k��B�r�Ck���~�������S(r"�༧��s�����fƽ�ŀ5蟀B~L��X�Q)t(�<��G���4�`���j-覌�>�Z���4{e�﷗F�ۑ�Xp�	�����]]]�Ł&;3�iu�����Q��z��m�9~fiJ�����
2�t*E��^vuu�j���2��^���������7~뷂D2��Gt�U�/�a+ϑ�l���׿��_���>�^�«�ۚL������.c�� ���4��j�b��?�����X&VM��Y��3KS��%d��$𓓕P�<���}T��''y�`5n���s;X	{m����]O>���FhS&�EG&�85��\glr ��<B�Nk����}ת!W��+�,"��E�A!�6���E�L^"�j�G+�?c�DY	����Q�RXru�^¶9�?{w����6CZ�A�}ǆŀ�Ր�]�����3��~�"��o��)OE��3
�*mvvvҿ��&�\�֡��~P��D%B#L��)m/AXB97'��u�����ŕk��-,lرŀ8�|�� |�С�m�}�q�Z~s��X��!�f	�=)�3��}�$�jaZ_������Eg��(*'̥>�i�ۅ/=�<H:���OJ���Ґ&�u�P@�zt�Q)�k������:��8~�>w�5�ô�������H��G+!�n�C��PiMq������:Α�ؖ�PCz��Wu�o:�z���_�l�d"q^
�D:�����|��u�����<\C@G���}d� '�.1n9b�'�`=VhbWW�>t�{��D&��m� ����к!����׀�\�|��ΌZB�S)��ే����n捊�~��v#�R�N���Ì�%�$�z��m�{{y������	�%�@��MY��g(���*��".5�gg2C�C# HI��~m^�&I�ZD]U���cڈY��W��Y�"��,V�y�m���}v4g�_4a�uhJ�^2�f�:61�����H}p ����:���ZavA*�$����gg2/$��F}�%t�RX����:�����C�b�F�,\C8��Z��o}S���ی�9gc�h�t�{����Ç���&q�0����N�I���OZ�!���@{q����'��+����_�{�eoo/ҲB�ɍD(y��~P�AX���a�?�����mfVZo�[�EOw7�b��_�#��`kk="��h}&���!\w	AƨF�7#�����ޜ8��	�%o�2W=\a+�Kf|M裰A�L�'�I2�T�^,�������-*K��75�\�-�ξI橧��Eϥu���L�TO�E�G ����<f����u�]_�b�~�-M�g��Yp]Z�����yJ�2ow�*jv�f��d��d���e�=!�I[+�����T���:����?"q�p��ַU^Z
�~>�,d'5��5���M�t@ T���(p�E/�ъ�����,��r���� �=��A�t�͆����%N�Am��h,^�B~r����҄>�دr�8�[w߉B�F��zx]|���A�E���P�j���n\0_����O�n�a�dW)�Jf���y�]t>��T�HA)4̻� �<�(���Z�QU٩̙ᨍ�Ѯ{=�}�h�Pύ�kGa�0�ɢ�.�\)f*�h�����uѮ�U�3 0[*�\'ˌ���F�c�i?�3ַ�8fl.��L`s�z3ӸF�i�z>�4aU�#f�<�p-��9 �7>�;V]�q0�B���f�?��7c�j������ �+�%/s�R��(�	����LV	�CZ�QG뺮�4��Ɓh}�������H��V�����K^<��ĥ���(��E*����JB9�Tm��t�g����������}��h�����n�Zaz�һ���~�B�u*u8%"�M
�*�Wū���1�T�s+\ki)�u�����Z�J�Ec�Z�Q�Y:W��,�.��+���+�$�(����˞d>&��~�^k����i?���~vMc��Ƌjµ������<��\��������?�"PH�V
�TV�� �]iT:ｋ73]>��ca�� Y��&~�2���~���e���r�	�XX/�Իn!�i�%����h�F�!�>UH&P������Y�9�Y�m.��k����5��Ɂ�'ّ���w�]w���Ea���Fc��,�V�	�=�����o��ؽ��l+�L����G�_��$R+5��fq]�$>�����>��h`�J%�R	7��0��5���+���	�����ӕ��N����%@��������JV�Qh���
5�R��䅓�撱�J]����,r���9<s�����Cw�*��X�x��r٫�pVXfI�S}T�3p���k�l~� /v����h D&������r�e�������c�m$vEVi�������B�
��	k��,������)Y�<4�Qゲj���K��T��_h�ӆ��XO4:ThVf��v��uCWz'���Gb?/�7�=Dsd�E#f�'��f�RR��:]wH+��J�x��>�0xly�OB;Y�d�+�-�ȇR�j�{�8�8��~��:kKfsr���n�	l�>�M,)D��$U���X�qE�O�Ͼ*\��R.�?��f]�q��wj��?�歇qh�L���s�c������;�B�<�E[*�W��	�ׂצ[p+y���Ą3��5�"����m�`���SZ����!��gXa���&���\}��0�_�����6�u�/�"I*YTC�Y�i�r�,(8�D�����q����Q���>c�����Jq02;��U�
�c�Ͳ�twwͲB��K���O���1�(S�{���*C�2��3�Q4Lbd"����)®�w3v�87;�Ꜭ�ulҰY�%/E���b|s5m�5�'U���a�� 3vu���l�u��X�Y.��5�`̸��9 e�SZ�Qs	�9����C�QJ,�b��]bII��Z���Y�"17�Ҳ)n4N>\��I�N�>.	K/�3˂|�,��,\���r��V^�\��G��Rf�����kC��}������E�܂d1')��akg�3��<��ӌ���|�Ց+ܚ����э�� ����}�r9�&'������E�߸A6���<Ҷ��+��SW�+H�K�[Y��v�$����`�D�r��J���H�s_�Vb���;8Q(�'��y��~�1��'�������9�� ne��-,�����B6x4�Gw{;�|�\.GSS�����#|����S_������in��P(P(��)[MKS���imn���-x+����q�qӲ^Tn�ҹ��4_� �P��H��EC�}�"�:t�F��ߓ��בH���wt���<-�����y��<ܚ�;�K�K��آ�;,��Jq����0811A�a!��Z﹧f��Z%0�͒�籤����Ʌ|ᘖ�p��o)���mY�J_"Q�Ҝ�L��H�MW�g%��9�����O7X��-�?�O�3$�a�J�����lm�t�gd�z�l�	2�wX��r^���B i.�o�ь��(0,�>�*5�L$���a��N}�l6�q(Ǭ��B����@�Ҵ�~\z����yꄔӨR�'\ϣ4�s&��N��%�As��6�S���-�}3X"��d"���E*����m�̍̐׵R�8�������ɛ7����ۈflR3����)�+����'�m�~�S�:\(E.")e��߳���
�fR����"�<�u�<o8utw���y*K��|
� J�s���ڠҼ��J��2L�h.�k�;���(7�_ca�Jum��j��Zkdd��jȃU��K�jZ�?hPf��;o�Pj�(:�\�����n���Xu��Y�X��ѫJ�a�ss�e��]/L=�3�=v���e��L��'��@G��1�% 4+������H.g�˂�Ŵֈ5<�j���H�<�yY�8'4k.���g�r��:���|�*�_�_&���2�u��󳳳8��nD��<���J)�'˃6N���'��J7D�u��c�w�:����Tz���������iX��p���p�x��;�e���Z���0���3џ��V�Q��q�g5�|��49����i0��t���=@N���������U���K�״�uFH�+�5�m��/]��Ç�������y0��OH�V�ۿ��@�7r#�a�]�)��������Ž�M�
��yg�A2%�?�����,�������i��%�K�nה�Ғ�,��ݶ�=��G��}��i0 �Ao�oy�w��_���m�&��e�y�έ\����E���1MO�2q1���h�<    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/playerShip2_red.png-576384ec137a87fdce073f389a03f52d.stex"

[deps]

source_file="res://Textures/Characters/playerShip2_red.png"
source_md5="4f7ecc777e9d828bf109773c2c535472"

dest_files=[ "res://.import/playerShip2_red.png-576384ec137a87fdce073f389a03f52d.stex" ]
dest_md5="487182626946ce2d00c1b05685be55f4"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [remap]

path="res://Scripts/Lvl1.gdc"
         [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/asteroids.gdc"
    [remap]

path="res://Scripts/drone_creator.gdc"
[remap]

path="res://Scripts/star_gen.gdc"
     �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name         Wild & Free    application/run/main_scene          res://Scenes/Lvl1.tscn     application/config/icon         res://icon.png     display/window/size/width     �         display/window/size/height     8         display/window/stretch/mode         viewport   display/window/stretch/aspect         keep   input/gp_forwards@              InputEventKey         resource_local_to_scene           resource_name���          device               alt           shift             control           meta          command           pressed           scancode  W          unicode              echo          script            input/gp_turn_left@              InputEventKey         resource_local_to_scene           resource_name���          device               alt           shift             control           meta          command           pressed           scancode  A          unicode              echo          script            input/gp_turn_right@              InputEventKey         resource_local_to_scene           resource_name���          device               alt           shift             control           meta          command           pressed           scancode  D          unicode              echo          script            input/gp_boost@              InputEventKey         resource_local_to_scene           resource_name���          device               alt           shift             control           meta          command           pressed           scancode             unicode              echo          script         )   rendering/environment/default_clear_color                    �?)   rendering/environment/default_environment          res://default_env.tres     GDPC