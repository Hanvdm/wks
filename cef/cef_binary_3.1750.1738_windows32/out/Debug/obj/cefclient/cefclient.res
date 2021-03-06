        ��  ��                  5      �� ���    0 	        <html>
<head>
<title>Binding Test</title>
<script language="JavaScript">

// Send a query to the browser process.
function sendMessage() {
  // Results in a call to the OnQuery method in binding_test.cpp
  window.cefQuery({
    request: 'BindingTest:' + document.getElementById("message").value,
    onSuccess: function(response) {
      document.getElementById('result').value = 'Response: '+response;
    },
    onFailure: function(error_code, error_message) {}
  });
}
</script>

</head>
<body bgcolor="white">
<form>
Message: <input type="text" id="message" value="My Message">
<br/><input type="button" onclick="sendMessage();" value="Send Message">
<br/>You should see the reverse of your message below:
<br/><textarea rows="10" cols="40" id="result"></textarea>
</form>
</body>
</html>
   *      �� ���    0 	        <html>
<head>
<title>Dialog Test</title>
<script>
function show_alert() {
  alert("I am an alert box!");
}

function show_confirm() {
  var r = confirm("Press a button");
  var msg = r ? "You pressed OK!" : "You pressed Cancel!";
  document.getElementById('cm').innerText = msg;
}

function show_prompt() {
  var name = prompt("Please enter your name" ,"Harry Potter");
  if (name != null && name != "")
    document.getElementById('pm').innerText = "Hello " + name + "!";
}

window.onbeforeunload = function() {
  return 'This is an onbeforeunload message.';
}

function update_time() {
  document.getElementById('time').innerText = new Date().toLocaleString();
}

function setup() {
  update_time();
  setInterval(update_time, 1000);
}

function show_file_dialog(element, test) {
  var message = 'DialogTest.' + test;
  var target = document.getElementById(element);

  // Results in a call to the OnQuery method in dialog_test.cpp
  window.cefQuery({
    request: message,
    onSuccess: function(response) {
      target.innerText = response;
    },
    onFailure: function(error_code, error_message) {}
  });
}

window.addEventListener('load', setup, false);
</script>
</head>
<body bgcolor="white">
<form>
Click a button to show the associated dialog type.
<br/><input type="button" onclick="show_alert();" value="Show Alert">
<br/><input type="button" onclick="show_confirm();" value="Show Confirm"> <span id="cm"></span>
<br/><input type="button" onclick="show_prompt();" value="Show Prompt"> <span id="pm"></span>
<br/>input type="file": <input type="file" name="pic" accept="text/*,.js,.css,image/*">
<br/><input type="button" onclick="show_file_dialog('fo', 'FileOpen');" value="Show File Open"> <span id="fo"></span>
<br/><input type="button" onclick="show_file_dialog('fom', 'FileOpenMultiple');" value="Show File Open Multiple"> <span id="fom"></span>
<br/><input type="button" onclick="show_file_dialog('fs', 'FileSave');" value="Show File Save"> <span id="fs"></span>
<p id="time"></p>
</form>
</body>
</html>
  �      �� ���    0 	        <html>
<body bgcolor="white">
<p id="instructions">Select some portion of the below page content and click the "Describe Selection" button. The selected region will then be described below.</p>
<p id="p1">This is p1</p>
<p id="p2">This is p2</p>
<p id="p3">This is p3</p>
<p id="p4">This is p4</p>
<form>
<input type="button" id="button" value="Describe Selection">
<p id="description">The description will appear here.</p>
</form>
</body>
</html>
   .      �� ���    0 	        <html>
<body bgcolor="white">
<script language="JavaScript">
var val = window.localStorage.getItem('val');
function addLine() {
  if(val == null)
    val = '<br/>One Line.';
  else
    val += '<br/>Another Line.';
  window.localStorage.setItem('val', val);
  document.getElementById('out').innerHTML = val;
}
</script>
Click the "Add Line" button to add a line or the "Clear" button to clear.<br/>
This data will persist across sessions if a cache path was specified.<br/>
<input type="button" value="Add Line" onClick="addLine();"/>
<input type="button" value="Clear" onClick="window.localStorage.removeItem('val'); window.location.reload();"/>
<div id="out"></div>
<script language="JavaScript">
if(val != null)
  document.getElementById('out').innerHTML = val;
</script>
</body>
</html>
  �]      �� ���    0 	        �PNG

   IHDR  y     ??�l   	pHYs     ��   tEXtSoftware Adobe ImageReadyq�e<  ]fIDATx��	x\�u�{
� �	��"�"@q_$�Z�͋;��N�����%3;_�e2����9��d�%yv&�8��3���L��s�ĖdG�%K"�R�bq��\� 	�]��v�۵�Z���@w�����uo���u��/�%@AAAA�t�Z�<T�|���������������� OAAAAA������ �SPPPP�)((((�y



�<A�����������@�Y�<��}����ɳCp��Š��;�'�%����yӌ��s�CǤ6�)y�� P>x�\	�g/o�_�������l'>W�W����+�N���ݝ0yb+,�7�: 

�<EtU���`��S�@m>����=c����9���I��A��uN����#�/.��93�i�SP�������OFꜱt
�� ��[0�s������[��=a���>�>Vtώ�~	��頠��;��OU�l�8qv^}���.��@����U�s��K�r�{�G���������Ņ�>A� �j�Go�W���,�e����L���{�g������7.����'�OA�����u�d�]E�g�`��w'�Y�N�Kyl�P�g}��O����u�|
�<�)���Y�����k��o�5`�`�s�m�Ϥ�S�$�߿�'�>Y:y���॑�b?�n?e�0�)oS��`wC�|�B��z�����k}7�y�|B�1��.,	ݵ��v��ʠ,3�g�=��Q(���ȇ`ø�X�����M=�I�S�)2��W�:��hwɎQ�n�� �K�W�I|ܫ�C@���Өy=�ʾxY���\
�<��m��m�W�cG8�W��,�
�i����n'h���z�m�S���X�=>|�"��ЁLA��P���<\T��%�A5����;�� ����6{��l�j�k=��i+`���t`S�	�%��]�k�*ˢ���w	�h��w����{A�V�Y�y���0���ݻ6/_@:A~��}�A��C>oϘG���;a�������g�������ơ ȏ������|w�� ��Uc<Bn��.,�_�A�y~j>O���l���;��Ϗ����C����eU�}��u�.�k�;P��I�kg�0���\HLܒ��d ��h���g���4���fk�,o��O����E������&����|3�3o�o?[I�d�J�9��*�|.V�mL�Y��;Tn�*�.17�*y�e���k��(��?񁍰y����6�������h2��C�FI��8<��6`Cu��g�[�?l��!V��ܷ^����,,
R�f��.�C�Pҙ^�3 S���C��`�z򕳂��䱿S����7��G�ZI?
R���v�Ի��^i���x����H�3�WL��w���4ʬڜ�Z��|_<ti���.�Z<v>��FX�5�~H���Q���W���%m��Sd�(�[�"�4J˗fi��f��;'��'�)y�lE{H,d"��oYF?*
R���޿��+��j`��4�G|�ʝ�6K���$"ң�f:��?�{r�*�U��Yڠ*���<���ľ��8����v��ӣ�{�x+e�P��k���Ƿ�3�	M����գ��]g=���,����Q��U��x��w|��	m�{�V/�IT��j5v�s~�?	Ok����Z���|?�x�_��Cu�4���Bki�V���@�[���מ�o>��~pd׌f�A2q��`��Rz"�͢AI��������n����){©J��o_ZO��[���!����?���f�X�D�Gɾ� �������/���,�F�����Rb@z�f���t�(�n�+C�e�D�H�!���8p����2�j]Wf�H�~����:ʾ� ��ƞ��"���%	X��^oނԬ��|X������J�_x��޻�N�r�WtϮܟ�=��"ܢ�\�Ol{��l�����I���^��������K�J���_�_}|;��?S�Vz�C���7
�m0�^@[ |ŵ����EU�ī��N`g��� �B�i&z�S��.�K/|��D&��b\z���Ƕ��opL.�~���~��UO�)�%��Led�P<z�{�uWp��ˬ�)T�hxϫ�q��\�P��j�ǘ3�#�ȥ�űs��,�(��Q�L�m��/�l��߿:&�OOAJ>�?��g#Uf�\���j۸��j}�}�ga�j���o\��]\˥�BX~�~z4�� ������aI�t����&�S����}E�?cLn�A��R��>�Y���&G@߲ftׁ�2Zq|`��>V��	��^��Jz� ���K��ܙT䌂 v�/|��hP�! �Sym��Y ���}(����r)���qv�Y�ӯ�.��1T��2�KgAm����ΟI�� ����ށ/��ˈP�C�a@�}6���E��e������~Q�/`�T�R��1S7eϓN�40����{�y,��Ԏ��BuPҩ�`��ng�}(�@_�1�nZ����<�Z���Y�`��;'$�C~����cb��)�j��#[#����H-Л�˜ ���P�߾�1x��-��JR����(
Q�x�Ⱒ�U�z�����E�� ȋ��"��|�RLZ��1�lӜA�S��?�(���f���,�9u����! ����?��.\�@��8�Z�O~�ݰt��bC�/~�����K������q���~�R;����"�}�-�P���we0�O~���C���������N�6v�Oo߄��b��h����;�c"ؿ���{�#��?����)����_,���������y��S�9�>���A�@��������a��'���Oˠ/>�q���_E?����!��𯾭���V����g�~o|;���7^?�~u�g.�K�}ŧ/�߈�R_�w�)43���!���z~X|�&YЧ�o2��j`
|�Y1�w����+��P��C����U�+B?Y��H}�m��^=EsB��ߌ/�|�A�Y�� �fc�����o~�F�3�|�F�p���n�������΅����@F4t�/?�2<����quG^.�D� |t奐J+&���$/^���\ɣ�*=&�T`�U��O�U_V[���KW1�퓷U�Gx@�2��q����7-'k��B��_y�:�u�"��?� {�����7��/}�����B��]������#EECQ�>���l2�$ن'y���B�N5O��� �%P�;��t�YK�"k�r����S9�2�M�t�x}��'�%�7x���/����W߻6�q��R�
��V�o�����ꝗ��4��P�\R�٦$�c�����j�W�D�+�ۥ�qǭ�Qu�T�R>��En��߹�����&��ݻ>t���7������!o���!���i���4��֐m�@��d�$+� �M���� _,��}�1+���?$�]2ozdψҵ�i����+�!(�}�/�����0��@���y�gg��Hp	�_���ӗ�q�S��z�U�=��}�_I�;��v4�g������ґNAA�����������#8�l-�,�ek&� 9 epTU/U����4�����:Խ�:�;&�Ep�k�b:�)(�����EVM"}�j:Q�RVMb��V�>=��c����[8���jPZ�ٽ��Y:bb��~�fX�5��p

�|�������!I�V��(�@���b� ���!�1GF6��r�woZ:�G�r��-�1��((( �Ͻy~v����P��_V߸O�cpU��<�[8�U�z9��y����ޡ�Eܹn1|���tTSPP4�=#l[p۠��iT�dh���昲wZ9	���a�|�Ε�(Â���A /Z�E&�/���ZP|�R�eU��V>sP�z����r��k[1��z��X)((	�_yt싦l�Eq��0UoS�ט���6��m�v���u����)((��v����+0abL�^<+� eϾ����R��3`/�{�,@�P�P�^�/�������}���x

����y)��<��.ä���^/��1��%�c3a��7<�>f唞I|�Xħ�N��R$)((����Nxy������%`-&�L	�#�ג)�J�@��M����S��$���)((�C�W��Ͻm<>x�bt=1C�j�he0kK��պÚ1_��{��4`� ��zݿ� OAAuUj����aڼE��ڊ�~d�J����.�Vn��P��}zs[�l�)V���砟˥��{�J�����K訥��h<�>}	���	hmk�%=K�m.��+W�f��2�c��a*���ux�w _�4�Z���>�� OAAѸ�d[_iپ�{�b�2u*
����
{p�޼pߦ��� �
�{��]+	�����������}���V@����֚pt �g
�+��N��^"E��YMG*EcB^�F*J9쬄y�5{̙;�
��sCP(�\���;�X3�¼`S�c�׿�%�f�o��Mt�RPPd�1Ϯ���F
�J��n._�N?�����B��Θ--,'ؗ�{h�����'OS��L�D�J�v��h�?���MyЉ�_�%4�fM�.�S���֒_Q�1�'O�=�z`ߞ}�z�(�պ8f��:��N#��,����5eb+��_�Ұku�����3�"s����f����V�.��ע�6�tE���u�G��� ��x(�7��[G��/:A?}��ܿ���ǳaU^~m��րW0�;�_��t�̆8����"��v�zCYB�{c_t;����<߳`f���`CoWM�/:�Ƕ�%zxBt�b��m���f�߹�f�n� ��o�<t��tD�ǀlk+*��{��7޴�� ��sC��ܤW�J]�s�Y>���s�Rx�ƥum��?����uH����Ɉ��/Q�4[�tG�y�>����Dq_��A�ةƝz3�H��w5��Ƣ�U`��څp��8}���D��Z��T�P��hc��,��D��_�̍u	v�x����Z��B��U��ń��i���(�/��)DS^��C~��s��o��♦����˖��K?��|��}E��fL��0h�P)YW������n�#|��ͤ�D'���x>ZRR����6Р.E]�X?���ps@��m���O�/K���9;R��~��E�2yT��d�l��pՆ)��3v**��߳��2�~�P��o?�3�@�͊�[�?�m_ԩ��)M�b�C$&����7�66��ħ�F�^���6V�]}}�pe�]��rQ���^���Y�
��5�;�΃�1�K�	����#�������7�𐏽x��p�����	mm���:xk��R��re-��[8� �P��}�;R	9�Ð���^�<Es��Q����C�3D���W�X���C�
��R����1���.|iܙ����,sП�Y>9���X�3�_)�^͏*���	
��]�K�^�s������^��z�느�s��H��^j[f(u�g|t}20$��O�-�I�Sԫ��3�f� ���	��^<(����9���ؓ'O}�Ѕ�pM�5�O_O���eT?O���82�
uf93v������S�v[+�\sȓOQ�!�����(SU<��5��M��m�+W��v��QM���7>�]�_��P[�[�u��m)?V�_�͒��v-��B/������ �3��]��#�$EAQ�!lTa�6���7�C�����h������fvD�٣�@���~����,@5�+���.�R�8@�$\�_�|��V�od�g���������|Jg�
���q�5]]��5�	JO�Z�����z�h�e{�������
\m`�!ۢ)�������jQ���L�E�����h�$%��}�Ri7���Y�;P��,�<�枼�QSR�ّ#Z��t&O�7��m�^O�鳦�Z�24DF��i9ȟ}��Q;�ă�ҵˏg҃6�9�j�Γ���,h��1/X�!ԜJ�1����`��Fe�ճK�T}�\cx��7����VN�b�L�j������\e�]�Ů�2����%�]{�쇁�s�A�w���毿���.?��3#kU�
���Rm�R��%�X�p.�t�3pdسr��j�$�z+Kl��p����VEC��<m>���9֡Z;U��5���&��B�������kj׈z�{���6LFD�3P�x�Ͽ�5��[\�8�եB��=5W������v9@���Ńy�oʺ�g�]`Ӵ0�@mv��^T|,r�J��Z��o�Jk�/�xIKŢ��QK��@ZFoLd,�����m��Y���V�iQ���^�ڞ�~T]�5�������
{�[Uj�̝�	v��#}�@?Z���*^ ����GHgII���v��u��)�Ԏ�V=?�UK��*{��˭O�<ˤ:�ڏW���ҙ<W��ފ�$������%Gng��W
c�rzk��;iG��5nԳU�~Ҟ�Ev܊��j-��A^�ݺ��y�uaȠ�_��q�Ƶp��I�Ե+�_˔��q�)C^��t�KQ; �u�:�]���SXŦQ�����b�'\8��R�+�D�|�V��O�6�nMH�Q�E˦�7b['z�1a��L�c���kcn{ܱb(Sơ�߇��k7T���5"m���U[�[��)v�稜z�vʔ�vX��'�w--:2X���*>�+�������,�-�͂�֑�Q�	 �zZ�L������9 �QO~,JW��m���'�Z0-M�d�����jQ۽ޕ{��l�R{u{L� �-�$K�E�iT�F��Z�k-����eS3%���Sv��W@�:���C��X����?��C���b�T�Z��T�_��A�-�R�ԡm��m��������'���Y�	�lˈ%e�%͚��7���v�:$�N�<�T�����+R޶���<c��+͸�9~�V^��T=�֘m	���q�p�'$�dr�ģ�V�U��t,s�}1e/�lD!�������&/��Y5��IL�����e�6ظqm��/:�w���jbV���`���A�tb�s��ߘ�� ��5	�E��ΖE����i��Ï��9�ev�ׂ(ui�U�HJ��]z�Ђ�!����lmNE����N(��� : sF�Y���Q˦����jp�������뮽v~4{��dU��Kы��Z����/�eͶ`��C���(rP1�����2�:gz;̝���̉�
,�=.n_W�����v�@"����̅h J\�=���*���qE?ZJ�f'1���|�$+|�L�66��{�ȍ��GL����0&��z7�����YkE�k-�"Wޙ��v�-q0SY_�ח�2e��򌥴j p��2����TT����SU+�<@_/ �ٯ?U����m�L����������"�K��"��+���k��������ㅻ���//S�N���3���}!�2��v�&~~�����*x<.=$%z�$3D��NV<�����<ϕ�"�f�v�C7f˲�;��m!D�%�,��'W�@nO�>3ڴ|��\~�CUulr��X�5�z�U���3��O�5k:,]���SЋI7�����o�8R�i�"��a��q�����{a����1�q�m���cbAd��w�|L��V�t�(M=����@p�d=��w�r�oX�x��i��!����U[5v���M��¡C�`d$�:���/g�E_/f��x�a�Lc
`��4dq�+ؼ|>��w���2n_smt�ă�"K��b{=����ک��^,��x�A�����)<c{��ֶ��&k�\!/f�>})�O�Z5�1����Q��6�֯�W^~�����EG�^�Q(ӿ��c�6��;�i`�U�;�@�Xs՞%�X���v����(׸VJ�d�1;aӏ�b�5=���uz{Wӑ6c��\!/&?��#�co�1��0c���K͕+{`��}�R*��H������7_(��v[@���g�{
����-�ls�b?�j.?�-�(e'L�_w���L�u<i�w����j��7 ���x�3�����O<W�ߖ�[�����x�!���q#k�����J��&3l���Vx�3J}�����!l�����\s8�m����U�T<�:6!t7�1?��������)�Y@_��/������S�-��Y�ni���m�~ᖆP��f����#��M�{T<2��O[7Y��6*�Sc�労2�+B�r	B\��o�rcn&@/c�*>g��	O��l�j���0����.�7������6�_���j��M��g��5�+��PJ��V	�zA��f��5��/��`�� v��Y�V���)SڣA�<A?2l/����+�c���nӎ	<C�t���=1"`I�t�ÏmI����2�\!˷o�Eo�t��a�t��ѕYҐ�#��]m��k�\ ��09s�e\Z]c�תqHvf�V�ꁶ	m���� ��`�R|���`��j�x�V�۲ý�٪%����J�7�]����'mLp7�|�vfH�[�L�5�U��E�w���0��2��p��e߈���7�ͭ�l���iՔT�O�ѧ1��7�z�.��X2o:��Gn&��RQ�N� Q��0�^=�L���w�̬	�.��u�mũL 3�@��̭�������3gM�)��jDu�D��vE�<ׂ&�E��O��w�5���ޙ��`.�,�����!��3�r���&k?ޝ:�ɪ��.sU�:�E��\���5������#g����ݏ�B�wB�w�V�����+�{]��vfh;�"���k��ؠ����7��IWn}
��!R*����o]�0��y�"�,>����'D�U��E��wy�b��¡S�Rǲ�`ԍ˾r�]�5б^��aꝅ�Œ]��� �� ��D�� ��"�U#?�~Ê\acЯY�_z�_y�i��������/}�(S��M=D�Y!3:`}?������!�K��;R�� CD����P8A>R�}C��bϏ���G�-u2�bw���vX�*�mZ�(���/�<���#Pq@�
x �R�����D� ����0���*K��7���Ξ�)C:a �E��`��+1t�j4�U:�tgX�������rutL�o���Sa�i9����Q���z��x0���߱��h'�^Ii��H`�/
l��Ac��o��b6�jQ�pgM�U��� �<��=��׺	��]ON��7ݜ� l^*>���o�:T�!� �Q��~�i2@�i���$�Y o��Ie.��K�8����^e�f0@M3���u����R'}V��i���0��3ȯ�g�UX5���1R� ˦A}x���H"��e�P��5j6�.���x�̊´�T�cZa��oX�x'�׹!�ǐ���@�נa��u�=�ʹ�|���]�o���E� �m�� X�M��3��t�R?�G�k�g.�7;t2��ё��l�S�Wڹ9GA�Q����CZvO,/Ycy�Y��Cϲ�R*��O�9A���Ǎ=pdldU��~��nR����o����~����2ww���l���N���O]Dm�4�eBmS�2��XE�O�"�ryw~��/�:�z�G�{�Ar�n�Hj����O��U��Hq��\w�1kb�g�|�U�������0��F��PG&��# ����U*�t�w�^�ʴy0&�@�^?��L���SdP��N��Dy�LS�AgJ!m��_�<��i�cX聋��U@<�3X��'*I�%D�d�v2�M�4�=���S��c��O�(�}*�Q� 
���L)��Y�2�R�W�jl����ܕm"Ђ�������W�-�,��D��RɇZ�������".Z�>n¾5��^�C��wQ�|�����tB��N�;�n���9�5��G�W�K���J�$�&�qŜ*�9�������?>��s�v\{�s�Y�>�6�>!���)��ه��:�}�o�$�L�3]/_��w�'��,9g߹���Tk�5��o<1�V������5ށ7��(�~��\<��]�Y�7�݋w[.������!�,6�=�H�hs�hW����s	��ܾV*>��w�q*H��+*>d�UW9�ж���-ڛEum���Ο��|>V���g��,��k����?+�I�Ws��s�ÍF���0d�2��C_�tPC�{ǐ�r�pV�tt��-C:��1�zTϢ�� ��gml)�q��P�c=D�����=��+�f�|��I��2!�5yz6��7l\{�:��#޷�kԅK��1`Հ��T|��Q9�|,�
���& S�ُ�'�d<�w�r�UD3`�-��d�:V�f�����FS�;��։>�������޽�:]j�q��c����.���|�$���Xb�^/�L�>�UC��5,�E]�[�f�Nm���!����A���j/�}�y_uN�bd�R��QoL���ѢgX�K����,��=�(/i���Љ2�J�ֶc�`s��L;�c9�m&��5kҌ��I� ˖wG�a�vM>�|�ϐ����������|�aaVR����w�ݫIc�Z���W�A���w�Ǫ	�h�8�ﵮ�f,�i)W���!5Et����"r��sͳa~�% }2�DO/�^x�m~5�W�dT���u�*�^��Y�����*��L�G#�W�.��Z����[7��m �fl�2��׷A;0��u�j�/���=��e~E\e;g��[�S��v]
#>sf����/��%����e�u\��ɪ�kGy̱�cخ�D�b���52���g�,��y],aŲm��D�e�]l�o�=e}��Z6�H[g��&m��a?�5�5�G��Q�yխ9>0h=AN�7���T�,�cŰ��V�YÖVl)Vg;��+u����,��dϩg����F��+�K�f����I� x����p�H��a���ʹ�|^K�v�uj��=�[<���ZL^�y-慩�c�꧀��B��{��:e����`8y�m��Ax�Z�����'=�/���k`,�����ت�=�Gy�+ԟ�:n|�R̺d a�iYY��.��	�2v�ط�oֱ��rvZ=`��7�G�ë��sZjq<�������e�P�R�R��0?�8]�LO�{��2��<��bdP��m�Ųi��fy�/{����������7&B��Yn��f�)R*Em9��:c��(�m�����b�g�G9���ݾV�&��Zs%_��G3��c��X]��5�Q~u�O���M��v��}��s2dŵT��r#�Oc�/��卹���h����`\�&���X|�־��(�o=wF�(C�V4+�|�P��,�=,���M������Pъ���j����y�>��/��o~�����%�-�� ���[�O�������8�a;�W�ΤnD��{:��$G��P����Q����,I�����-m�[�T�9�GAɋٮ͋�q��S*�S=�:�@#��	��� y֓6D9*��.\B����+�*!�^s���q0*Hb)G���Pi�ޞK���oIy�)�-��fp�Y��p���Iډ9�}e�Dxȃ\����\��<������ȎbP�J�H���ڗ�(��%U��y�ٮ"Z�'�-/��G.���e�-�*��G9I���S���xy�2X�ϵMKw����ݙ�Ę�w[5�N=99R���Xn��v�u�6�Q���S<� 4ژ�g6!ggAg���U׮h��j�#�w�u5�x^�?�`�Y�ߙ2T�������DG�`U���q{"�퀜���v[P�c�%�����ư	�����(��ʛ�͏'�g�=k�~�J~���F��V:Oɤ��Wh��}\xy��9��`�G@d8\g미ݿ{�sKG�)a[:)�(p�M�+m\�$��>�]�4v2���:��U�Eݞ�W�fv����� ��M�S�v�U>��X6�����i�ת��
P���X1�	���X���\_�0_F
"
,��Q���4:	�=���.��!��66,Q��6��*�d�æ��x'�j b%���ښ���� �xM���n�y�[��k�H�Ή�C��h�/x@�/z�[�9V�]y	/B~95�o/XNHs�	��ʌU��uq�#O���n)	�1i���5U�?�i ��W�X{�\�%G�T��hd�[P�M^�;O���yN�a��CR�1�f�&��6/�4���v�`���U�gR򳧶�����ۆȨ�C7t���>{	M�T��^��Ps�g�`��j� �V'ck�P��%m�T�zUٶ)�N
�G�d}j���L�ǚ��)���=e�U����=
iY$��.�[�h���-��j^�{��\4@�����Sk����<G���k�0�3
lm��m׌�ד���/�|5���b�U>��<�.���ս�d�d?n�i��U�,yꀜާB��2!��'N�����Sl��X��xrp$�Ϙ7s
�	qU������쯼u����3�e���R�<����1�?�!ϳ�[K�J3�7Tz������W
��1���wiԞ[�L���:��3/����F� U66 y�&p�����~1r���Q�`\C~YWG�}BO^��m�l�Cù}��3��G���1/5/��1�r�y��Y
zP��;S�=�66U}s5zKU-^���B����g������zѶɢ�-@y�G��")�.�|���8ML����ߙbc �l�J���k��Z���<ţ�9�3�8���P~VǺ���\^���`]0�2a�O���h 65�%%���}�~��J���W��y��l��*�C[6䯟�Q=�}�<cQU�L�׈�zb0�f��	�t�0`+�!>��K)(���Oqxp	�|t�h-�oM\�s��#�%w�5a�?�t�͊�*�<��	�N
(��N��R��\�žb55N5����^(yR��.��i)��e�%�����Xx�ڌ'O� �h�$��S,���œ�D�W�9�ʲ�ϲ�&EUM\�s����$�P����$��8��R'���ʐ{@h�HB���I�p��~F�W��	�����u:��T�o������{=/�F�m����Im�7ϵ�!�<*8`n��2�ߺ����6H�	{����O��6�a�hV��z/�)O^R�:d�Z+Ə�V�L��bj�x��q�E�y�|�P���<����gwS���J� �[ H��@��pͺ���M��d���	����p��4�t+���!�����W�ܥ�|�[W/2- i�s4ʚ"��^�X~#11���~��xH��� r�ޣ6)�N8��cN��i�fm�L�W&D9������ʰ�6s&�e�Q�y[6s�Z6�t<$���%�ljƀ=�}��'�Y<�����(�v�I�� _n�B�>�z�C5ۙ7�iS&�Ϟ�Yn�_	4�a�u�5x���|���\w�{7.�Իt
�9Z� ,ӹ�jp5#��g�8@t�B�k�W���j(�]�S8ծ1��m�������F����S'���Չ�.���)_3Aܣڱ�E]��!��w	� �4>��3~����J�N�~A��4��c-D֤����k�N�8��ۙ�����kY���|l٠���3W^r�g�d�tՖM`�4�<Kt͚R��2�S2� �n�z��& zO�,��k�w�J[�vV-2�<�S�N��$�\��V��c��I �3Y6i�<�@�o���W,��! �G����qU)��w�[ �=��
�͎V�oU��u�wf�ϊ|y�~7��:\�&B�6ˆg8���w�b�;g}ϼh��M ��OY}J�ep�Lዏ�
_z���:�`��Ȱ��Z{[N�"����67E�ͤ��o��<3�wd� ��5�_���`�F���j��J^į�w���6@�X7�SV�=�-��O���}�_��� A�`� }!���z�>���PvM0�����Nը<��5�5��ٓ�A��_��׬����m�3����'.�;1J�y19�#���J�l�R1�zQ����Ŭ���ʓ�gvt��Wӛ�=f�ysWD��������QI�@�7���J8q�`p�w�\�g�k�/�Ʋ��������$[ ���S� ����yj&C_L��ֳ�����x�����+�찧(����H�P�޼/�5o��dyA�����-�M���|�|�*<x���y<+Cd�D��1�g=H�0@�ZL�O��C�ٯ�>�g����w`��������#�kz��`,�N�sJ�є|��kW��LXo�fk��j^,gؔ�e��~L����1��x0���։��K~]�۶?�'.�D%�Mj�uG}莕������� � �a��6.o�K<HV�ʷ�WB������;��.�¹kC7ܽ~1̝�1�� ������F���k��]8�&�/u�Ҿ`L�Șt��,J���`@���<��c_��E�q�OZ���h�5[TE��]#��vS?�Fe������k�,��}L��ko���ܰpZ�;J,(��6��/� I��.��姘6��X�]������~	��c��·��]�tM�����%s�K�c{�����7��Ep??4��QD��̅�[71T�v��U�Ǐǟ�}ܢ�����������s�$��]9u�
�CM~������߰�fK��
��P�G�\R����NJ�q�(q�C��N8gP�ΞA�/,��!/b}OWQѯ(���51�L�L�[�c�O�Ym+`���w6�@y�v���"�gD�*Ό��j��30xq�E���u���]��q�����P���,�#���o��P��y:�<��s�:}���Ҽ��I�,2^�ĬB0���x��-�v6<���������+��5ᄨ�=�u������y( j�%�1�.�&����U���n��^���#Q�͜)r�a�xps�T�\ �U7KTC�:c�7�_5hx���q�D4H��vɼ��>�M���J�|��+t*�����-���L�.+Oy��Ǖ�x�s"~XBh����Rx2�e%���p5}�zT�Y:{��í���n6W�j���{pB9LQ��P�\����Ct�jO��ǃ��^���j y%��(�E�i�c��y���^S���`6S�q���XrX�bTf&�jU����u��q���Ǖ�~�[hqG�[2���W�Dع+�E4���JG
r��G�ܩ�m+v�Y9\�l��?(�B,�=yB�rp2�fɸ�@����h�}��ŕ��=��Ȳ鯝�+��Go�2���( �lSy�`IK3���?m���ܙ�>f˘P� G�-5�ͅ�l������,�������]���g�ߥ�e��۸�fo�C`mm���
JB�<�xż��i�fj
�-����b��c����qp���@�
�)跬�.���l�qx�?7d��W��܀�f� ����]=�����1P�xn<т(>��{>8�t �5J�R��n�T�tL �K`�SiK�S+h!�xE-�v�$���b�g��s�IA�
ާ؍�tgm��߿��Y���/���5�N����\A�J�gc`�s��YG������E��X)M[n|���\ʿPio��7���3
!gS 6���1�o��	�$s��WG5���AW5O���xu�`�<x�l@ls��������t{t-������O�Ó��p�A��+��pg߇/����\���WJ����~�s��FӮ��z#]��B���'f�I��	��,m�١PE��+m���bs��y�J��{*l?t�|`0O��k�UI!�`�61J{,s�M�<x/��kG�ý�g�t'
Ћvb�>#��� $��{*?���:)| ʀ�"���2=�D)+�����>�*�/���O����_o{}?��7�r�Ӵb�ʜ'�ͦ�[�z�uE��}y�c),9m,�)s����bﱣ��ȷ-�������{�� f�,v
�����;<��\���S�V󘍃�+��C۠�k0�m��.p�8i�P�ǂ�>��g��i���R�X�#7 :խ#b���!�G>\����O>���ɇ������y#C�;
DY�g
��`��>��Y��)�5k��xA{�5��ݲ�r'�&hƫòYW�l�5i���F�D�s+lfl%<�7�m�^u��Z�mv�]�[O�I�-5ߡ�kU����l-���v6���3��:*�ym��Xpf���1�6��ޣ��>�����$(��ᚲ��g蓒��ͽ3�-���S�v��L�=o�z�m��玣��U>jj^��7��_|�~�7�-�k�e�uu�[�E)���e��i��YA0���W%�V�`I�4����=�b|D��_�xLnk��>ˆ�s捎�+x���m�@洞���sp)ǅ�}!&L�����os������RPV��$}!_mo�D�ڴM�A>Dy�LH� �����T6Gf�rC��#�V sdu��j>�Y@������՝+l���ѿ�:ʵa �������������y��b�ٵac�U�<E�C��ز��շ��ZԼ��z<��\ ��^<pvT2m�ز���'�^=�
�x�Mn*<����%P2C�i�c��A�� �g�E�&�ၖ��,bل��``{ץ��2 �%tؿ���1�ѱ�����z���tnfp۪;��<V�z�c��6�((��"�^5+�e��'iV5_�mc���`/����w��7���?z{40��Ε>�����ݮ���f��)(F���,U�D�Xq�e�-��j�b�Tc�pOG�S��sO��Y�"GX8!���Ӑ�|d�P䫌{V�v�>xʑ�� 5o�`���4�?<pv��db���5׎��^�PP�:Zk��"g�{����Z4�$)e�G�=*�4�f�p��[��)�r�9P��ؤ�6g`Hga[���5���>*�Bmq
��m{ᱭ{�EÛ'�Yˇ�\un�*b��	Q��K{ j�'��[������\�)Ӧr���c�R�2��� �md�o[wS�H�|ᝳpO�̺: �fM����]�o-�/�Fmd�+�E&J3�����sJ�O�7����~�^JXR�~5����'xi� �#��u�ryʹ��:��'õ3'���!��[o�n�/`/�R�u=���zJg'���E�+����������ao�Pi�EVZӒ�a��.Ù��a�����+�l��2V�����^���
��)uWf�lڤk�W6͇Im-u���/�����~a��3�u�,]�SPP�"����_=���
����6 �5:�5x�'�ѧ|��y��ES�e3����e�y��r&�x�e����C���b �ɏQPP��]#bYW�v�Gj^7�Ѫ��Ugno^�g�=�1�9<�m�[/i��}�XN�A�~^�Mg��6i-��)(�#F�#x߆��j��j5��(�p��R�\������%��r�������,)�X<��\)�IAA�x��ռ�:�e8r��(u��	RrI��K�IR<d�(�/�;����t5=E�A^Q��Q5�1e�Lh���#葉	����7���h�2�3=t�ɋ�ʡstTRPP4䅚���٘�xXf�r�xW��A�t��՞w�u�a�Z�D�<�� ??LG&EcA^�ț�z�����[�nT�*��	s�JG� =��(Y��� ����7_�'����� /f��
�Y�<H�%�AXٶ� .���@,��>Gz�&` �}�r�
�@OAAA�P�/�����?��VLesc�ml���q �|��h�OՇf�p����������h0ȷO�&�m05��!���HV���k��m VV�ܥ֫ɪ�"v�W�@,EA^�(C�p�Dc�uQb���rn�6.�+�C�dh����So�O�R�s

������%3\ɂ���fƌö���۳jl�畎�W�#vOP����g(ㆂ��� /R*o��T�<�Mj߬V՟w���=���T��	yˆ�,�?��O����h��j^,��A��k͂᠂���r�m��T��g�I��7��y1���R!+-�ƚ.ծ�&�\}��p�z�Q�AV�_�'^)�~[��� ybl�v#c[Ǖ[j�p��=ʙ���M��y�ڀ�M�ۼ���<�Y7��'�SPP4�E��%��gd�&� �ܰ]裠7��Z6��̅Ƀdy�A���6��Ќj��(��	���9ҬV�$�'.����q���|ܑ�VA�~,0J��
~N�E�pq� �=~�� ?�qw9wްm4խ�<��Ʌn�Vb�W&L����;!pX5N��-�`��A�O���s{���eX<{5A~�#Ν�g�%
��I-���>q��G|zTՇ���R�����"�����((,1x�*���3C#0�D�x5
A~�#Ν�f�Zk�c��k�4I���m>=����<��)��º��^;	o���f�����008�@��vj��ت�$w^�m���sk|�����6�`/?�&�
�F�����4��v*jFQ���#y� ��1�9��N�@C����|�T��Y1`Z4>�����?h;��@/G���dÍ���ߛ�/��~����S��c��⾳	���d��)�0���u��`��SՎ� ���@�e�hg�}cx��ʗr�eb�p�ڌ]L�s�<)���K������𿊠�?K��1F�4��F`��`�DR���	�;?�����[��^����í� ��\K�T �����r'�Q�����3��� ��A�����)�]��#�
�����Q��˶��w]�*u ky��� 4��%�m�^_�
�kt��9�Jn?�� �_���������ͣ��,^No_�����ੋE���2ht�_�9�PFA��bѬI������{^�u�z�A�k_W�ܴ�\.w
���ߛk�^�捃����A���t�7�=�����ʁ�p�J쿗_ hma�q�Tj(�|}��$�����iAo*x��w�^�Łύ�]��b��9r����������G���g�o�8y~��y
���\z	�����A�v����B�E����|<���3cMޡ��Wg���נa�o��E�"8W&�	���ä�]�_-D�T�E�<��Uɞ�����VX9��� _��UnY��ZPЃ������ss��{@�q��7�l���j����C�NH�;6p���axj�i�4`+v�O;�Ǉ�`��^����;�� �!�y����\�מ�D��FU�׍�> >�Zy��Y5��c�ա*�S����?v �>AŪ!������g#�]�)�U�~�~є(C�b|+��?]��L�|�w��G����<+^�7���u�>c,ٶ�0��.oXy.~]�f�c��&�*�X�t��!�x���G�r�����n���}�;a&A�.���Ŏx��Q���\��z�Ì�~|p�j<
hm�/,b��[��-q�E=UV�r[�^�Cb�mt7~���'�������g	�c�F��%�L^�A�2��1�_����B'�m�zg�;�^(�d(:��m��<����!�������	�X�sI��]�`�4�
y��e!\,���y�	�_�!�J��`�/���U=��.�>�6V�	<�*�u��
��0���<�<���� wyE��������[��ճ`��3�2Fq��p�Cp�U�۔�M�M��S茌�A�8�?�W��G�\6���Va��"Y4�}�X0��7-�İa��"[9���
u��_�Ѿ�v�+漏k�lo������Р-���[��p�w	�<&��w�d��:g�f�|��V��1���eHKpfҋ��^z��Ą<"�MЫT��]��J��ጎVx�NX�h
�85���H��V����vݳ'�{WͦƤh��}rE����:-�S ߥ����-�R�p8j���;�1�`R[ܱ|ܹb&�>�8|��s�"]Izn0��h��_�	i�E�A�����Oݟ���Kի����m+�C�z���z� �v � �	wݮ@*v��lZ:��YQj+E��I��S ~�x���u��s�۳ڋ�_O��hb�G���Ţ�?���r�m��t�˰�l��x���;èmQ��zB�a����Q��Z�ū������{Vφ��Ӡ�
`9C,�~������vЛ�M|[d�|h�\�:�����!_�;p�z4>��Ga/�8�E�ٙ	��,y�@,�r��pw�w}��(�%�-�3`��iх��/]������0t��1xjS}޼ ��|��O1N ��<yN�(�F���z<��quo�ڙͻ�JxC��]=2�wL��Z�G��Z�O9��BُW�����؇v�G��,3Y���KϷ��x��y�`�85f���@N�ǀ�5.�� �F���]W���Իl�\�ZN�_�=�,���w4�o,���Е�"���+�3ɫ	���Tͦq�w�7/��n �S�ESy���o߿��ӗ*3^�3TK��$��,لn�y�5ԹQ�r[���O�����z��9��9.���,y���j��������å+���"�8�Llk<��\�e���_��X0
��T��m���|� OA����Bt�T�)R��	� [!53kx�/!���Ϻ��=���L��p��{|]��%��j��e(_�QN�����J\�E��z���<ʀ�|.a~���Ȏ�����-�1\�l|�o+���y�������K{*�@S���@�JYP�}l�h�4��~��/<���-tw*s�9������~�w�a�}Ƭ���*�Ը�:���"��5-,�zj���OĹ"�#�a.2�Ĳ�r҂V�� D���}��w��8����S���n�`��;O��Ԕ�L�W��!��(��KGi��CŻ_��HG�n��@��v���VX�^4�NnM�'��$�k_�Vtz�.:W.� �Ղ����P�+���G���^���rE�F��(�?��(���;
qIJ]�W(��^!����Z�W��C�����rf��/����w��Q�M��R��KW���:�2��������0�oQ����� ��Όfh��c����BRQ2.�X8P��u�'�]S�&����uo�G|{���K�p�;ĮI��o.��'^ǀ�B�v[�s(�S�ޑ+/����d0���wGϢY�#�~A���@[U[�ɹ�����azQ�'���뻂�Zpm�,m��
 �ըR~ʤk�w~�w�	��+���+��j�D�,�T�U./��\�d��B	�ɒ{Ѣ������r|�����]M���=����}�n�x��Yx
R�YBdz������/��K��EA��[0�><���6���R�ҩ�C��
\W�.�Y3��!�eŬ:U�`�����rW��`+��}@VĻV̄��6A��u�z��Ⱦyxk_��d�'7e�+�&�cPW�]y��ZTp�5c"̟96���ꚶ5|��T}�v��6���c�D�1�n��S)��� �[��Z˺��+���
PʪQ`Y��}�z�j<+豎�;
�����.M�4K�q��X����p�!�n�5�Ŏ�5�ɞ� ��"�.���ܑhv&��k�$j��i�[@�Bպ�I�Ў�츝���E4�i����d�c T股����D'|���m�H��Y3"���e��JA���}3��7�����oo��;�a����+��z�%��r�_���qlXR�����:�A̥����x��wۄ'����̻V̂�s&��� ?Zq˲����#R�{����#@K~5|e~�yTދ�A��x�n)TV��n����OY�: V���$�' VK&��)ɧ�<{9Ȟ� ȏa���z�:xr�I����#U��.��c&���d<TÇ]7j�p�jQy�o�S���kusd+,`�,^<�>�	�P��6�^�Y���bg��ک�C� ȏu�kugT��?*�z���7��4���	u�U�0l)@��l�Z�&�*��pV��
� ��'E�8>��9kVW�"=r�d��Q��J�������W�ұ���րo���z�������k-�����:@���p�6P*�;��;����3^9^q2�I�S� n]63R��/���
�y%�F������'�EΏ�S,e�,����Q����5��v��I1
Z-���]�u����b��z� �7@���ݹ(��?,��V���ٖFe�z��#Ŋǰf�����ٮ��^��U�X��������c ���u ����J��;e�P�0����都��cS��qRM&&�`�l�n�$E��\��k�_[^0�g�Ll{�7�L��)yW���Y�hj��N�3�&�p��y*���a�0=��k�9�'$zc�r�"p���Ԫ�Ժ1��=�T����Aقc�����{'k�� �d��o��O�����_?^b͵S�j��[W�e��{겍cS���L�{����2X���-�ө�E]+ğ.^��"�8u~x\�^dӬ�ꆹ]�]�C]����L\�j@K�D�)x�܅r_8s"����K��K18+�}��^�7����C���V���uه�f�X�ՄL�r�W�)H�S)�'w�*���׳o���т Ʋ���ZlIA4��:�*)qM�{��������b�Fp� �S1t�j4@+2rDI�F����{7�1�nU�6��6�E�j]V�o޴v��Ȗ��s2�R�]C�x�V\�_�3P*��`�|���V��t|R��j���)Cl��.� �r�TH
�<E����r��Exj�)x�ๆ�rfMi���UR&сW� =���ȼ��:@��(@|w�j'K�� O�K\;{r4H+B��7��-���_R����\��},�}�{��Z5�c)�.B���j� O��� OQSu/j��vN\6�BLz����P�8���	��IQ���`�]<+��N^;A�b�B�`���RO�_�`j���?����n��� dR6���X�P�v
�<E]����1�t��[[��x�2�}@D}up��E��<����xMVA������,�����`��SK�M���p5H��a�����</M�re��P@פ�)(��O�."D��}-�/ ���TI�5Ս&�Aݥ�c���x!�SP�2D�}��O_����,��F��I�[6!�� ��n������J�2�r���QP��s����"�|��.GЗo�bi�(<��oo\�U.ba�Zܟ���y�4��n�����bR���%�<)K�J�M�F9rSQ��s�qa�LhmI����I��q�,

�<E�CLʪt��SFAAAA������ �SPPPP�)((((�y




[�� �s0y$$    IEND�B`�   �	      �� ���    0 	        <html>
  <head><title>OSR Test</title></head>
  <style>
  .red_hover:hover {color:red;}
  #li { width: 530px; }
  body {background:rgba(255, 0, 0, 0.5); }
  input {-webkit-appearance: none; }
  #LI11select {width: 75px;}
  </style>
  <script>
  function getElement(id) { return document.getElementById(id); }
  function makeH1Red() { getElement('LI00').style.color='red'; }
  function makeH1Black() { getElement('LI00').style.color='black'; }
  function navigate() { location.href='?k='+getElement('editbox').value; }
  function load() { var select = document.getElementById('LI11select');
    for (var i = 1; i < 21; i++)
      select.options.add(new Option('Option ' + i, i));
  }

  function onEventTest(event) {
    var param = 'osr' + event.type;

    if (event.type == "click")
      param += event.button;

    // Results in a call to the OnQuery method in os_rendering_unittest.cc.
    window.testQuery({request: param});
  }

  </script>
  <body onfocus='onEventTest(event)' onblur='onEventTest(event)' onload='load();'>
  <h1 id='LI00' onclick="onEventTest(event)">
    OSR Testing h1 - Focus and blur
    <select id='LI11select'>
      <option value='0'>Default</option>
    </select>
    this page and will get this red black
  </h1>
  <ol>
  <li id='LI01'>OnPaint should be called each time a page loads</li>
  <li id='LI02' style='cursor:pointer;'><span>Move mouse
      to require an OnCursorChange call</span></li>
  <li id='LI03' onmousemove="onEventTest(event)"><span>Hover will color this with
      red. Will trigger OnPaint once on enter and once on leave</span></li>
  <li id='LI04'>Right clicking will show contextual menu and will request
      GetScreenPoint</li>
  <li id='LI05'>IsWindowRenderingDisabled should be true</li>
  <li id='LI06'>WasResized should trigger full repaint if size changes.
      </li>
  <li id='LI07'>Invalidate should trigger OnPaint once</li>
  <li id='LI08'>Click and write here with SendKeyEvent to trigger repaints:
      <input id='editbox' type='text' value='' size="5"></li>
  <li id='LI09'>Click here with SendMouseClickEvent to navigate:
      <input id='btnnavigate' type='button' onclick='navigate()'
      value='Click here to navigate' id='editbox' /></li>
  <li id='LI10' title='EXPECTED_TOOLTIP'>Mouse over this element will
      trigger show a tooltip</li>
  </ol>
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  </body>
</html>
 �      �� ���    0 	        <html>
<head>
<title>Other Tests</title>
</head>
<body bgcolor="white">
<h3>Various other internal and external tests.</h3>
<ul>
<li><a href="http://mudcu.be/labs/JS1k/BreathingGalaxies.html">Accelerated 2D Canvas</a></li>
<li><a href="http://webkit.org/blog-files/3d-transforms/poster-circle.html">Accelerated Layers</a></li>
<li><a href="http://html5advent2011.digitpaint.nl/3/index.html">Cursors</a></li>
<li><a href="http://tests/dialogs">Dialogs</a></li>
<li><a href="http://tests/domaccess">DOM Access</a></li>
<li><a href="http://html5demos.com/drag">Drag & Drop</a></li>
<li><a href="http://www.adobe.com/software/flash/about/">Flash Plugin</a></li>
<li><a href="http://html5demos.com/geo">Geolocation</a></li>
<li><a href="http://www.html5test.com">HTML5 Feature Test</a></li>
<li><a href="http://www.youtube.com/watch?v=siOHh0uzcuY&html5=True">HTML5 Video</a></li>
<li><a href="http://tests/binding">JavaScript Binding</a></li>
<li><a href="http://tests/performance">JavaScript Performance Tests</a></li>
<li><a href="http://tests/performance2">JavaScript Performance (2) Tests</a></li>
<li><a href="http://tests/window">JavaScript Window Manipulation</a></li>
<li><a href="http://tests/localstorage">Local Storage</a></li>
<li><a href="http://mrdoob.com/lab/javascript/requestanimationframe/">requestAnimationFrame</a></li>
<li><a href="client://tests/handler.html">Scheme Handler</a></li>
<li><a href="http://slides.html5rocks.com/#speech-input">Speech Input</a> - requires "enable-speech-input" flag</li>
<li><a href="http://tests/transparency">Transparency</a></li>
<li><a href="http://webglsamples.googlecode.com/hg/field/field.html">WebGL</a></li>
<li><a href="http://apprtc.appspot.com/">WebRTC</a> - requires "enable-media-stream" flag</li>
<li><a href="http://tests/xmlhttprequest">XMLHttpRequest</a></li>
<li><a href="javascript:window.print();">Print this page with &quot;javascript:window.print();&quot;</a></li>
</ul>
</body>
</html>
          �� ���    0 	        <!DOCTYPE HTML>
<html>
  <head>
    <title>Performance Tests</title>
    <style>
      body { font-family: Tahoma, Serif; font-size: 9pt; }
    </style>
  </head>
  <body bgcolor="white">
    <h1>Performance Tests</h1>
    <input type="button" value="Run Tests" onClick="run();" id="run"/> Filter: <input type="text" size="50" id="filters"/>
    <div><span id="statusBox"></span> <progress id="progressBox" value="0" style="display:none"></progress></div>

    <div style="padding-top:10px; padding-bottom:10px">
    <table id="resultTable" border="1" cellspacing="1" cellpadding="4">
      <thead>
        <tr>
          <td>Name</td>
          <td>Iterations per Run</td>
          <td>Avg (ms)</td>
          <td>Min (ms)</td>
          <td>Max (ms)</td>
          <td>StdDev (ms)</td>
          <td>Runs (ms)</td>
        </tr>
      </thead>
      <!-- result rows here -->
    </table>
    </div>

    <hr width="80%">

    Result 1: <input type="text" size="100" id="result1"/>
    <br/>Result 2: <input type="text" size="100" id="result2"/>
    <br/><input type="button" value="Compare" onClick="compare();" id="compare"/>

    <div style="padding-top:10px; padding-bottom:10px">
    <table id="compareTable" border="1" cellspacing="1" cellpadding="4">
      <thead>
        <tr>
          <td>Name</td>
          <td>Result 1 Avg (ms)</td>
          <td>Result 2 Avg (ms)</td>
          <td>% Diff</td>
        </tr>
      </thead>
      <!-- result rows here -->
    </table>
    </div>

<script type="text/javascript">
function run() {
  var runElement = document.getElementById("run");
  var filtersElement = document.getElementById("filters");
  var compareElement = document.getElementById("compare");
  var result1Element = document.getElementById("result1");
  var result2Element = document.getElementById("result2");

  // Number of runs for each test.
  var testRuns = 10;

  // Delay between test runs.
  var runDelay = 0;

  // Retrieve the list of all tests.
  var allTests = window.GetPerfTests();

  // Populated with the list of tests that will be run.
  var tests = [];
  var currentTest = 0;

  var testList = filtersElement.value.trim();
  if (testList.length > 0) {
    // Include or exclude specific tests.
    var included = [];
    var excluded = [];

    var testNames = testList.split(",");

    // Identify included and excluded tests.
    for (i = 0; i < testNames.length; ++i) {
      var testName = testNames[i].trim();
      if (testName[0] == '-') {
        // Exclude the test.
        excluded.push(testName.substr(1));
      } else {
        // Include the test.
        included.push(testName);
      }
    }

    if (included.length > 0) {
      // Only use the included tests.
      for (i = 0; i < allTests.length; ++i) {
        var test = allTests[i];
        var testName = test[0];
        if (included.indexOf(testName) >= 0)
          tests.push(test);
      }
    } else if (excluded.length > 0) {
      // Use all tests except the excluded tests.
      for (i = 0; i < allTests.length; ++i) {
        var test = allTests[i];
        var testName = test[0];
        if (excluded.indexOf(testName) < 0)
          tests.push(test);
      }
    }
  } else {
    // Run all tests.
    tests = allTests;
  }

  function updateStatusComplete() {
    var statusBox = document.getElementById("statusBox");
    statusBox.innerText = 'All tests completed.';

    runElement.disabled = false;
    filtersElement.disabled = false;
    result1Element.disabled = false;
    result2Element.disabled = false;
    compareElement.disabled = false;
  }

  function updateStatus(test) {
    var statusBox = document.getElementById("statusBox");
    var progressBox = document.getElementById("progressBox");

    if (test.run >= test.totalRuns) {
      statusBox.innerText = test.name + " completed.";
      progressBox.style.display = 'none';
    } else {
      statusBox.innerText = test.name + " (" + test.run + "/" + test.totalRuns + ")";
      progressBox.value = (test.run / test.totalRuns);
      progressBox.style.display = 'inline';
    }
  }

  function appendResult(test) {
    var e = document.getElementById("resultTable");

    // Calculate the average.
    var avg = test.total / test.totalRuns;

    // Calculate the standard deviation.
    var sqsum = 0;
    for (i = 0; i < test.results.length; ++i) {
      var diff = test.results[i] - avg;
      sqsum += diff * diff;
    }
    var stddev = Math.round(Math.sqrt(sqsum / test.totalRuns) * 100.0) / 100.0;

    e.insertAdjacentHTML("beforeEnd", [
        "<tr>",
        "<td>", test.name, "</td>",
        "<td>", test.iterations, "</td>",
        "<td>", avg, "</td>",
        "<td>", test.min, "</td>",
        "<td>", test.max, "</td>",
        "<td>", stddev, "</td>",
        "<td>", test.results.join(", "), "</td>",
        "<tr>"
        ].join(""));

    if (result1Element.value.length > 0)
      result1Element.value += ",";
    result1Element.value += test.name + "=" + avg;
  }

  // Execute the test function.
  function execTestFunc(name) {
    return window.RunPerfTest(name);
  }

  // Schedule the next test.
  function nextTest(test) {
    appendResult(test);
    currentTest++;
    runTest();
  }

  // Schedule the next step for the current test.
  function nextTestStep(test) {
    setTimeout(function () { execTest(test); }, runDelay);
  }

  // Perform the next step for the current test.
  function execTest(test) {
    updateStatus(test);

    if (!test.warmedUp) {
      execTestFunc(test.name);
      test.warmedUp = true;
      return nextTestStep(test);
    }

    if (test.run >= test.totalRuns)
      return nextTest(test);

    var elapsed = execTestFunc(test.name);
    test.results.push(elapsed);

    test.total += elapsed;
    if (!test.min) test.min = elapsed;
    else if (test.min > elapsed) test.min = elapsed;
    if (!test.max) test.max = elapsed;
    else if (test.max < elapsed) test.max = elapsed;

    test.run++;

    return nextTestStep(test);
  }

  function runTest() {
    if (currentTest == tests.length) {
      updateStatusComplete();
      return;
    }

    var test = {
        name: tests[currentTest][0],
        iterations: tests[currentTest][1],
        warmedUp: false,
        total: 0,
        totalRuns: testRuns,
        run: 0,
        results: []
    };
    setTimeout(function () { execTest(test); }, runDelay);
  }

  // Schedule the first test.
  if (tests.length > 0) {
    runElement.disabled = true;
    filtersElement.disabled = true;
    result1Element.value = "";
    result1Element.disabled = true;
    result2Element.disabled = true;
    compareElement.disabled = true;

    runTest();
  }
}

function compare() {
  var result1 = document.getElementById("result1").value.trim();
  var result2 = document.getElementById("result2").value.trim();

  if (result1.length == 0 || result2.length == 0)
    return;

  var r1values = result1.split(",");
  var r2values = result2.split(",");
  for (i = 0; i < r1values.length; ++i) {
    var r1parts = r1values[i].split("=");
    var r1name = r1parts[0].trim();
    var r1val = r1parts[1].trim();

    for (x = 0; x < r2values.length; ++x) {
      var r2parts = r2values[x].split("=");
      var r2name = r2parts[0].trim();
      var r2val = r2parts[1].trim();

      if (r2name == r1name) {
        appendResult(r1name, r1val, r2val);

        // Remove the matching index.
        r2values.splice(x, 1);
        break;
      }
    }
  }
  
  function appendResult(name, r1val, r2val) {
    var e = document.getElementById("compareTable");
 
    // Calculate the percent difference.
    var diff = Math.round(((r2val - r1val) / r1val) * 10000.0) / 100.0;

    e.insertAdjacentHTML("beforeEnd", [
        "<tr>",
        "<td>", name, "</td>",
        "<td>", r1val, "</td>",
        "<td>", r2val, "</td>",
        "<td>", diff, "</td>",
        "<tr>"
        ].join(""));
  }
}
</script>

  </body>
</html>
�;      �� ���    0 	        <!DOCTYPE HTML>
<html>
    <head>
        <title>Performance Tests (2)</title>
        <style>
            body { font-family: Tahoma, Serif; font-size: 9pt; }

            .left { text-align: left; }
            .right { text-align: right; }
            .center { text-align: center; }

            table.resultTable 
            {
                border: 1px solid black;
                border-collapse: collapse;
                empty-cells: show;
                width: 100%;
            }
            table.resultTable td
            {
                padding: 2px 4px;
                border: 1px solid black;
            }
            table.resultTable > thead > tr
            {
                font-weight: bold;
                background: lightblue;
            }
            table.resultTable > tbody > tr:nth-child(odd)
            {
                background: white;
            }
            table.resultTable > tbody > tr:nth-child(even)
            {
                background: lightgray;
            }

            .hide { display: none; }
        </style>
    </head>
    <body bgcolor="white">
        <h1>Performance Tests (2)</h1>

        <form id="sForm" onsubmit="runTestSuite();return false">
            <table>
                <tr>
                    <td colspan="2">Settings:</td>
                </tr>
                <tr>
                    <td class="right">Iterations:</td>
                    <td><input id="sIterations" type="text" value="1000" required pattern="[0-9]+" /></td>
                </tr>
                <tr>
                    <td class="right">Samples:</td>
                    <td><input id="sSamples" type="text" value="100" required pattern="[0-9]+" /></td>
                </tr>
                <tr>
                    <td class="right">Mode:</td>
                    <td><input id="sAsync" name="sMode" type="radio" value="async" checked>Asynchronous</input>
                        <input id="sSync" name="sMode" type="radio" value="sync">Synchronous</input>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit" id="sRun" autofocus>Run!</button></td>
                </tr>
            </table>
        </form>


        <div><span id="statusBox"></span> <progress id="progressBox" value="0" style="display:none"></progress></div>

        <div style="padding-top:10px; padding-bottom:10px">
        <table id="resultTable" class="resultTable">
            <thead>
                <tr>
                    <td class="center" style="width:1%">Enabled</td>
                    <td class="center" style="width:10%">Name</td>
                    <td class="center" style="width:5%">Samples x Iterations</td>
                    <td class="center" style="width:5%">Min,&nbsp;ms</td>
                    <td class="center" style="width:5%">Avg,&nbsp;ms</td>
                    <td class="center" style="width:5%">Max,&nbsp;ms</td>
                    <td class="center" style="width:5%">Average calls/sec</td>
                    <td class="center" style="width:5%">Measuring Inacurracy</td>
                    <td class="center hide" style="width:5%">Memory, MB</td>
                    <td class="center hide" style="width:5%">Memory delta, MB</td>
                    <td class="center" style="width:55%">Description</td>
                </tr>
            </thead>
            <tbody>
                <!-- result rows here -->
            </tbody>
        </table>
        </div>

<script type="text/javascript">
(function () {
    function getPrivateWorkingSet() {
        return 0; // TODO: window.PerfTestGetPrivateWorkingSet();
    }

    var disableWarmUp = true;

    var asyncExecution = true;
    var testIterations = 1000;
    var totalSamples = 100;
    var sampleDelay = 0;

    var collectSamples = false;

    var tests = [];
    var testIndex = -1;

    function execTestFunc(test) {
        try {
            var begin = new Date();
            test.func(test.totalIterations);
            var end = new Date();
            return (end - begin);
        } catch (e) {
            test.error = e.toString();
            return 0;
        }
    }

    function execTest(test) {
        if (disableWarmUp) { test.warmedUp = true; }

        function nextStep() {
            if (asyncExecution) {
                setTimeout(function () { execTest(test); }, sampleDelay);
            } else {
                execTest(test);
            }
        }

        function nextTest() {
            updateStatus(test);
            appendResult(test);

            return execNextTest();
        }

        updateStatus(test);
        if (!test.warmedUp) {
            execTestFunc(test);
            if (!test.error) {
                test.warmedUp = true;
                test.beginMemory = getPrivateWorkingSet();
                return nextStep();
            } else {
                return nextTest();
            }
        }

        if (test.sample >= test.totalSamples) {
            test.avg = test.total / test.totalSamples;
            test.endMemory = getPrivateWorkingSet();
            return nextTest();
        }

        if (test.skipped) return nextTest();

        var elapsed = execTestFunc(test);
        if (!test.error) {
            test.total += elapsed;
            if (!test.min) test.min = elapsed;
            else if (test.min > elapsed) test.min = elapsed;
            if (!test.max) test.max = elapsed;
            else if (test.max < elapsed) test.max = elapsed;
            if (collectSamples) {
                test.results.push(elapsed);
            }
            test.sample++;
            return nextStep();
        } else {
            return nextTest();
        }
    }

    function updateStatus(test) {
        var statusBox = document.getElementById("statusBox");
        var progressBox = document.getElementById("progressBox");

        if (test.skipped || test.error || test.sample >= test.totalSamples) {
            statusBox.innerText = "";
            progressBox.style.display = "none";
        } else {
            statusBox.innerText = (testIndex + 1) + "/" + tests.length + ": " + test.name + " (" + test.sample + "/" + test.totalSamples + ")";
            progressBox.value = (test.sample / test.totalSamples);
            progressBox.style.display = "inline";
        }
    }

    function appendResult(test) {
        if (test.name == "warmup") return;

        var id = "testResultRow_" + test.index;

        var nearBound = (test.max - test.avg) < (test.avg - test.min) ? test.max : test.min;
        var memoryDelta = test.endMemory - test.beginMemory;
        if (memoryDelta < 0) memoryDelta = "-" + Math.abs(memoryDelta).toFixed(2);
        else memoryDelta = "+" + Math.abs(memoryDelta).toFixed(2);

        var markup = ["<tr id='" + id + "'>",
                      "<td class='left'><input type='checkbox' id='test_enabled_", test.index ,"' ", (!test.skipped ? "checked" : "") ," /></td>",
                      "<td class='left'>", test.name, "</td>",
                      "<td class='right'>", test.totalSamples, "x", test.totalIterations, "</td>",
                      "<td class='right'>", test.skipped || test.error || !test.prepared ? "-" : test.min.toFixed(2), "</td>",
                      "<td class='right'>", test.skipped || test.error || !test.prepared ? "-" : test.avg.toFixed(2), "</td>",
                      "<td class='right'>", test.skipped || test.error || !test.prepared ? "-" : test.max.toFixed(2), "</td>",
                      "<td class='right'>", test.skipped || test.error || !test.prepared ? "-" : (test.totalIterations * 1000 / test.avg).toFixed(2), "</td>",
                      "<td class='right'>", test.skipped || test.error || !test.prepared ? "-" : ("&#x00B1; " + (Math.abs(test.avg - nearBound) / (test.avg) * (100)).toFixed(2) + "%"), "</td>",
                      "<td class='right hide'>", test.skipped || test.error || !test.prepared ? "-" : test.endMemory.toFixed(2), "</td>",
                      "<td class='right hide'>", test.skipped || test.error || !test.prepared ? "-" : memoryDelta, "</td>",
                      "<td class='left'>", test.description, test.error ? (test.description ? "<br/>" : "") + "<span style='color:red'>" + test.error + "</span>" : "", "</td>",
                      "</tr>"
                      ].join("");
        // test.results.join(", "), "<br/>",

        var row = document.getElementById(id);
        if (row) {
            row.outerHTML = markup;
        } else {
            var tbody = document.getElementById("resultTable").tBodies[0];
            tbody.insertAdjacentHTML("beforeEnd", markup);
        }
    }

    function prepareQueuedTests() {
        testIndex = -1;
        for (var i = 0; i < tests.length; i++) {
            var test = tests[i];
            test.index = i;
            test.prepared = false;
            test.warmedUp = false;
            test.sample = 0;
            test.total = 0;
            test.results = [];
            test.error = false;
            test.min = null;
            test.avg = null;
            test.max = null;
            test.beginMemory = null;
            test.endMemory = null;
            test.totalIterations = parseInt(testIterations / test.complex);
            test.totalSamples = parseInt(totalSamples / test.complex);

            var skipElement = document.getElementById('test_enabled_' + test.index);
            test.skipped = skipElement ? !skipElement.checked : (test.skipped || false);

            if (test.totalIterations <= 0) test.totalIterations = 1;
            if (test.totalSamples <= 0) test.totalSamples = 1;

            appendResult(test);
            test.prepared = true;
        }
    }

    function queueTest(func, name, description) {
        var test;
        if (typeof func === "function") {
            test = {
                name: name,
                func: func,
                description: description
            };
        } else {
            test = func;
        }
        test.warmedUp = false;
        test.complex = test.complex || 1;
        tests.push(test);
    }

    function execNextTest() {
        testIndex++;
        if (tests.length <= testIndex) {
            return testSuiteFinished();
        } else {
            return execTest(tests[testIndex]);
        }
    }

    function execQueuedTests() {
        prepareQueuedTests();
        execNextTest();
    }

    function setSettingsState(disabled) {
        document.getElementById('sIterations').disabled = disabled;
        document.getElementById('sSamples').disabled = disabled;
        document.getElementById('sAsync').disabled = disabled;
        document.getElementById('sSync').disabled = disabled;
        document.getElementById('sRun').disabled = disabled;
    }

    function testSuiteFinished() {
        setSettingsState(false);
    }

    window.runTestSuite = function () {
        setSettingsState(true);

        testIterations = parseInt(document.getElementById('sIterations').value);
        totalSamples = parseInt(document.getElementById('sSamples').value);
        asyncExecution = document.getElementById('sAsync').checked;

        setTimeout(execQueuedTests, 0);
    }

    setTimeout(prepareQueuedTests, 0);

    // Test queue.
    queueTest({
        name: "PerfTestReturnValue Default",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue();
            }
        },
        description: "No arguments, returns int32 value.",
        skipped: true,
    });

    queueTest({
        name: "PerfTestReturnValue (0, Undefined)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(0);
            }
        },
        description: "Int argument, returns undefined value."
    });

    queueTest({
        name: "PerfTestReturnValue (1, Null)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(1);
            }
        },
        description: "Int argument, returns null value."
    });

    queueTest({
        name: "PerfTestReturnValue (2, Bool)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(2);
            }
        },
        description: "Int argument, returns bool value."
    });

    queueTest({
        name: "PerfTestReturnValue (3, Int)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(3);
            }
        },
        description: "Int argument, returns int value."
    });

    queueTest({
        name: "PerfTestReturnValue (4, UInt)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(4);
            }
        },
        description: "Int argument, returns uint value."
    });

    queueTest({
        name: "PerfTestReturnValue (5, Double)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(5);
            }
        },
        description: "Int argument, returns double value."
    });

    queueTest({
        name: "PerfTestReturnValue (6, Date)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(6);
            }
        },
        description: "Int argument, returns date value.",
        skipped: true,
    });

    queueTest({
        name: "PerfTestReturnValue (7, String)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(7);
            }
        },
        description: "Int argument, returns string value."
    });

    queueTest({
        name: "PerfTestReturnValue (8, Object)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(8);
            }
        },
        description: "Int argument, returns object value."
    });

    queueTest({
        name: "PerfTestReturnValue (9, Array)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(9);
            }
        },
        description: "Int argument, returns array value."
    });

    queueTest({
        name: "PerfTestReturnValue (10, Function)",
        func: function (count) {
            for (var i = 0; i < count; i++) {
                window.PerfTestReturnValue(10);
            }
        },
        description: "Int argument, returns function value.",
        skipped: true,
    });
    // add more tests to queueTest

})();
</script>

    </body>
</html>
  (      �� ���    0 	        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Transparency Examples</title>
<style type="text/css">
body {
font-family: Verdana, Arial;
}
img {
opacity:0.4;
}
img:hover {
opacity:1.0;
}
.box_white, .box_black {
font-size: 14px;
font-weight: bold;
text-align: center;
padding: 10px;
display: inline-block;
width: 100px;
}
.box_white {
background-color: white;
border: 2px solid black;
color: black;
}
.box_black {
background-color: black;
border: 2px solid white;
color: white;
}
.box_0 {
opacity: 1.0;
}
.box_25 {
opacity: 0.75;
}
.box_50 {
opacity: 0.5;
}
.box_75 {
opacity: 0.25;
}
.box_100 {
opacity: 0;
}
</style>
</head>
<body>

<h1>Image Transparency</h1>
Hover over an image to make it fully opaque.<br>
<img src="http://www.w3schools.com/css/klematis.jpg" width="150" height="113" alt="klematis" />
<img src="http://www.w3schools.com/css/klematis2.jpg" width="150" height="113" alt="klematis" />

<h1>Block Transparency</h1>
<span class="box_white box_0">White 0%</span> <span class="box_white box_25">White 25%</span> <span class="box_white box_50">White 50%</span> <span class="box_white box_75">White 75%</span> <span class="box_white box_100">White 100%</span>
<br>
<span class="box_black box_0">Black 0%</span> <span class="box_black box_25">Black 25%</span> <span class="box_black box_50">Black 50%</span> <span class="box_black box_75">Black 75%</span> <span class="box_black box_100">Black 100%</span>

</body>
</html>
�      �� ���    0 	        <html>
<head>
<title>Window Test</title>
<script>
function send_message(test, params) {
  var message = 'WindowTest.' + test;
  if (typeof params != 'undefined')
    message += ':' + params;

  // Results in a call to the OnQuery method in window_test.cpp.
  window.cefQuery({'request' : message});
}

function minimize() {
  send_message('Minimize');
}

function maximize() {
  send_message('Maximize');
}

function restore() {
  minimize();
  setTimeout(function() { send_message('Restore'); }, 1000);
}

function position() {
  var x = parseInt(document.getElementById('x').value);
  var y = parseInt(document.getElementById('y').value);
  var width = parseInt(document.getElementById('width').value);
  var height = parseInt(document.getElementById('height').value);
  if (isNaN(x) || isNaN(y) || isNaN(width) || isNaN(height))
    alert('Please specify a valid numeric value.');
  else
    send_message('Position', x + ',' + y + ',' + width + ',' + height);
}
</script>
</head>
<body bgcolor="white">
<form>
Click a button to perform the associated window action.
<br/><input type="button" onclick="minimize();" value="Minimize">
<br/><input type="button" onclick="maximize();" value="Maximize">
<br/><input type="button" onclick="restore();" value="Restore"> (minimizes and then restores the window as topmost)
<br/><input type="button" onclick="position();" value="Set Position"> X: <input type="text" size="4" id="x" value="200"> Y: <input type="text" size="4" id="y" value="100"> Width: <input type="text" size="4" id="width" value="800"> Height: <input type="text" size="4" id="height" value="600">
</form>
</body>
</html>
   k      �� ���    0 	        <html>
<body bgcolor="white">
<script language="JavaScript">
function execXMLHttpRequest()
{
  xhr = new XMLHttpRequest();
  xhr.open("GET",document.getElementById("url").value,false);
  xhr.setRequestHeader('My-Custom-Header', 'Some Value');
  xhr.send();
  document.getElementById('ta').value = "Status Code: "+xhr.status+"\n\n"+xhr.responseText;
}
</script>
<form>
URL: <input type="text" id="url" value="http://tests/request">
<br/><input type="button" onclick="execXMLHttpRequest();" value="Execute XMLHttpRequest">
<br/><textarea rows="10" cols="40" id="ta"></textarea>
</form>
</body>
</html>
 �      �� ��     	        (       @                                   �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� ����������������                wwwwwwwwwwwwwwwpx��������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������pxwwwwwwwwwwwwwxpx��������������pxDDDDDDDDD@    pxDDDDDDDDDH���pxDDDDDDDDDH���pxDDDDDDDDDDDDDDpx��������������pwwwwwwwwwwwwwwwp��������������������������������                                                                                                                                (      �� ��     	        (                                          �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� ��������        wwwwwwwpx������px������px������px������px������px������px������pxwwwwwwpxDDD���pxDDDDDDpx������pwwwwwwww��������                                                                �      �� ��     	        (   0   `                             qj� {r�     �R' �Q' �P' �H# �S$ �S% �R& �S& �R& �R' �hC �W! �V" �V" �U# �U$ �iP �Z �Z �Y �X  �X  �^ �] �] �[ �\ �a �` �` �_ �g �g �d �c �l
 �k �i �i �h �i �e) ʌP �b  �b �b �t �s �_ �[ �[ �c �r �v �p �b �q �o �p �x
 �n	 �h	 �w �o �t �y" �}' ߋ, Ȃ3 �E ֎@ ��U ��| ��� �s  �q  �f  �c  �b  �c  �t �u �t �r �j �e �c �c �] �[ �\ �u �v �t �u �t �e �] �\ �v �u �v �u �q �n �o �\ �v �w �u �v �u �w �v �w �w �v �w �x	 �x
 �y �z �z �z �{ �y �w ݂ �t �t �' �( �, �, �- �- �. �0 �0 �0 �0 �1 �3 ی1 �6 �7 �8 �8 �8 �: �= �> �= �@ �? �B �D �E �I �I �I �S �^ ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� Fp� cq� ��� sss ppp iii aaa ``` ___ ]]] [[[ YYY XXX                                                                                                                                                                                                                                                                     ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������	��������������������������������������������
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������!�� ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������%��������������������������������������������%��$��������������������������������������������$��"��������������������������������������������#��"��������������������������������������������#��"��������������������������������������������#��*��������������������������������������������+��(��������������������������������������������)��'��������������������������������������������'��&��������������������������������������������&��?��������������������������������������������?��<��������������������������������������������=��9��������������������������������������������;��7��������������������������������������������A��63[4]5mm]5\]m]mm5\mm5555555\\\5\\\5m\55\\5ed:���cOXY/P.Z0.0.QR00/ZPP0000000/0PPZR.BI@/DE0, �C��WkV21TSav^8{|}>qooggggggg1`_fhsnHK�{JLp��G���l�����������������������������������������-F�j���Nw~ytMMMMMMUbbrrrrrxxxxxxxxrriUMMMMMMMMMUuzt���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������  ������  ������  ������  �                                                                                                                                                                                                                                                                         �      ������  ������  ������  ������  ������  �      �� ��     	        (       @                             ~r�     YRO �M" �M" �M" �O$ �S( �S) xH0 ~L3 wG0 wH0 rE. xI1 �YB \TP XRO �K �N! �O" �N" �N" �O$ xI0 pE. ZSO �h: �lA �j@ Ȕs Ǘz �B  �@  �i7 ̖q ʕr YSO b_] �F  �E  �C  �D  �E  �C  �n5 �l6 �f> Ηn ɗs [TO �L  �I  �J  �I  �s- �r. �p0 �o1 לj ��_ ՛k Қl Йm ZTO �Y  �K  �I �w* �v, ۞h ٝi �i  �Y  �S  �{$ �z& �x' ߢe ݡf �m  �k  �l  �m  �n  �o  �n  �j  �m  �k  �q �} �$ ކ* ݉* �7 �? ��D Ջ; �@ �Q �b �c �b �b �o  �f  �q �r �x � � � �{ �z �{ �z �u ۀ ܀ ܀ ܁ ܁ ܂ ܃ ܂ ݃ ݄ ܄ ݄ ݅ �! ݆ �$ ݆! �& �' �* �+ �- ۉ* �/ �/ �3 �3 ��5 �6 �5 �7 �7 �8 �; �= �? ԍ7 ��V �p ��� ^][ �Ҫ �Ѵ �϶ �ϴ �ϵ �ͳ �ѷ �ҹ �ӹ �ҹ �Ӹ �ӹ �ս ��� ��� ��� ��� ��� ��� ��� ��� ��� .j� ��� ��� ttt ```                                                                                                                                                                                                                                                                                         ����������������������������������������������������������������������������������������������������������������������������������		
&�������������������������������1������������������������������������������������������������"���������������������������$��.���������������������������#%��-���������������������������0%��:���������������������������?%��9���������������������������>%��8���������������������������=%��7���������������������������;��E���������������������������G@��D���������������������������F@��M���������������������������O@��L���������������������������N2��K���������������������������h2��\���������������������������g2��]���������������������������f2��[�������������������������������I3')+*+)))*))()*+++,6J!54 CBA���jYPQTVTSkllZTTXRTUiHceWda/� i���u����`�������������������_<bm����t^��}zy|yx~���{|yvrrwsqpon������������������������������������������������������������������������������������������������������������������������������������������������   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �  �  ����������������h      �� ��     	        (                                        |WR ��� �Q3 �O1 ��b sP? �Q2 �Q2 �Y9 �^G ײ� �`E ۹� �cE �bE ݹ� ��� �o7 �f@ �gD �eD 㼜 ໝ �Ü 徚 �b �c �c �d �c �d �d �s  �x( ·> �zZ 翘 ��� �g ഄ ��x �$ �& �* �+ �+ �, �- �- �/ �0 �4 �6 ��I ��� ��� ��� ��� �ڽ ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���  ~~~ }}}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PPPPPPPPPPPPPPPPPKMNNNNNNNNNNOLO	O&:
OJHHGGGGGGGGHI
OJEEEEEEEEEEFCOJEEEEEEEEEEFCOJEEEEEEEEEEFDOJEFEEEEEEEEEBO%JEEEEEEEEEFFBOJJIIIIJIIIIJJO(@>=77A779?<8;$O' "!)O6530./21+*-,4#4PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP����� ��  ��  ��  ��  ��  ��  �  ��  ��  ��  ��  �� ����������%      �� ��     	        (   0   `                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��H#��P'��Q'��Q'��Q'��Q'�   �   �Q&ݤR&��R&��R'��R&��R&��R&��R&��R&��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��R'�   �   �R&����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������S&�   �   �S%����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������S$�   �   �U$����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������U#�   �   �V"����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������V"�   �   �W!����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������X �   �   �Y����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������X �   �   �Z����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Z�   �   �\����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������[�   �   �]����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������]�   �   �^����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������_�   �   �`����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������`�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �c����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������c�   �   �d����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������d�   �   �g����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������g�   �   �g����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������g�   �   �g����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������g�   �   �h����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������i��   �i����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������i��   !�k����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������k��   "�l
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������l
��   "�n	����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������n	��   "�o����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������p��   "�p����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������q��   !�r����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������w��   �c��_��]��[��\��[��\��\��\��[��[��\��\��\��\��\��[��[��\��\��[��[��[��[��[��[��[��[��[��[��[��[��[��[��[��\��[��[��[��[��[��[��\��]��b��t��   �e��f ��e��c��b��c ��b ��c��b��b ��b��b ��b ��c ��b��b��b��c��c ��c ��b��b��b��b��b��b��b��b��b��c ��c ��c��c ��b ��o�֎@��h	��b��y"��}'��b��e)�qj���iP��t��t��   �j��n��r��s��t��u��t��u��w��u��v��y��{��z��{��z��x
��v��w��w��u��u��u��u��u��u��u��t��t��v��v��v��w��v��E���|�݂��y���U������u�{r��Fp��cq��Ȃ3��w�   �   �o��y��S��^��E��D��I��I��D��:��B��I��6��3��8��?��@��=��>��>��=��=��=��=��=��=��=��8��,��0��0��-��.��(��'��,��0��-��0��1��7��8�ʌP�ߋ,�ی1��q�   J   �w 1�q ��v��z��x	��v��s ��s ��s ��s ��s ��s ��t��t��t��u��u��u��u��u��w��w��w��w��w��w��w��w��u��u��u��t��s ��s ��s ��s ��s ��s ��s ��s ��s ��t��w��x
��v��` W                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ������  ������  ������  �                                                                                                                                                                                                                                                                                                                             ������  ������  ������  ������  ������  �      �� ��     	        (       @                                                                                                                                                                                                                                                                                                                                                                                                     ^   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   i   �G ��>�:��9��8��8��8��9��:��:��:��:��:��:��:��:��:�:�:�:�:�:�:�:�:�:�:�:�:�i2�	�   ,�K��S(��O$��N!��N!��N!��N!��N"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��N"��M"��M"��O$��S)��O"��   1�lA�����������������������������������������������������������������������������������������������������������������ɗs�#�   -�j@�����������������������������������������������������������������������������������������������������������������Ǘz�
�   +�h:�����������������������������������������������������������������������������������������������������������������Ȕs�	 �   +�i7�����������������������������������������������������������������������������������������������������������������ʕr�
 �   +�l6�����������������������������������������������������������������������������������������������������������������̖q�
 �   +�n5�����������������������������������������������������������������������������������������������������������������Ηn�
 �   +�o1�����������������������������������������������������������������������������������������������������������������Йm� �   +�p0�����������������������������������������������������������������������������������������������������������������Қl� �   *�r.�����������������������������������������������������������������������������������������������������������������՛k� �   #�r.�����������������������������������������������������������������������������������������������������������������՛k� �   "�s-�����������������������������������������������������������������������������������������������������������������לj� �   "�v,�����������������������������������������������������������������������������������������������������������������ٝi� �   "�w*�����������������������������������������������������������������������������������������������������������������۞h� �   "�x'�����������������������������������������������������������������������������������������������������������������ݡf� �   "�z&�����������������������������������������������������������������������������������������������������������������ߢe� �   "�{$������������������������������������������������������������������������������������������������������������������b� �   "�$������������������������������������������������������������������������������������������������������������������b� �   "ކ*������������������������������������������������������������������������������������������������������������������c� �   "�}������ս��ҹ��ҹ��ӹ��ӹ��ҹ��ӹ��ӹ��ӹ��ӹ��ҹ��ӹ��ҹ��ҹ��ҹ��ҹ��ҹ��ҹ��Ӹ��϶��ͳ��ѷ��ϵ��ϴ��Ѵ��Ҫ�����ԍ7��   "�Y ��L ��F ��C ��E ��D ��E ��C ��C ��C ��D ��C ��C ��E ��C ��C ��D ��E ��E ��E ��C ��I ��S ��@ ��J ��I ��B ��I��K ��Y ��   $�f ��k ��m ��k ��n ��n ��n ��m ��q��r��r��q��n ��n ��m ��m ��l ��n ��o ��o ��i ��@��b��j ��Q���D��f>�.j��~r���o ��   �n �ۉ*���V��=��;��?��7��3��?��/��/��8��7��5��6��6��-��&��*��'��!��+��3��$��3���5��7���_�Ջ;��x�h   �t b�x�܄�܀��}��{��z��z
��|��z	��y
��|��}��}������~��{��|��z	��y��s ��s ��y��t ��t ��{ ��} ��|��m �                                                                                                                                                                                                                                                                                                                                                                                                       ���������                                                                                                          ������������h      �� ��     	        (                                                                                      
      k   �   �   �   �   �   �   �   �   �   �   �   �   {   O�O&��F#�C!�C!�C!�C!�C!�C!�C!�C!�C!�C!�A �E$�R(�   pְ������������������������������������������������������rE+�   pٵ������������������������������������������������������qD)�   p۵������������������������������������������������������tF'�   p޷������������������������������������������������������wH'�   pḖ�����������������������������������������������������zI&�   p五�����������������������������������������������������}L%�   p滒������������������������������������������������������N%�   p���������������������������������������������������������M!�   pް}��������������������������������������������������ڽ��c>�   p�c��d��c��d��d��d��c��b��c��c��x(��s ��o7�|WR��zW�   R�y��*����������������������$��1�mp   	                                                                                                                                � :�  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ����������v       �� ��k     0	                 �      (   00    �         �       h   00     �%          �        h     �      �� ��	     	        (       @                                   �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� ����������������                wwwwwwwwwwwwwwwpx��������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������px�������������pxwwwwwwwwwwwwwxpx��������������pxDDDDDDDDD@    pxDDDDDDDDDH���pxDDDDDDDDDH���pxDDDDDDDDDDDDDDpx��������������pwwwwwwwwwwwwwwwp��������������������������������                                                                                                                                (      �� ��
     	        (                                          �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� ��������        wwwwwwwpx������px������px������px������px������px������px������pxwwwwwwpxDDD���pxDDDDDDpx������pwwwwwwww��������                                                                �      �� ��     	        (   0   `                             qj� {r�     �R' �Q' �P' �H# �S$ �S% �R& �S& �R& �R' �hC �W! �V" �V" �U# �U$ �iP �Z �Z �Y �X  �X  �^ �] �] �[ �\ �a �` �` �_ �g �g �d �c �l
 �k �i �i �h �i �e) ʌP �b  �b �b �t �s �_ �[ �[ �c �r �v �p �b �q �o �p �x
 �n	 �h	 �w �o �t �y" �}' ߋ, Ȃ3 �E ֎@ ��U ��| ��� �s  �q  �f  �c  �b  �c  �t �u �t �r �j �e �c �c �] �[ �\ �u �v �t �u �t �e �] �\ �v �u �v �u �q �n �o �\ �v �w �u �v �u �w �v �w �w �v �w �x	 �x
 �y �z �z �z �{ �y �w ݂ �t �t �' �( �, �, �- �- �. �0 �0 �0 �0 �1 �3 ی1 �6 �7 �8 �8 �8 �: �= �> �= �@ �? �B �D �E �I �I �I �S �^ ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� Fp� cq� ��� sss ppp iii aaa ``` ___ ]]] [[[ YYY XXX                                                                                                                                                                                                                                                                     ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������	��������������������������������������������
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������!�� ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������%��������������������������������������������%��$��������������������������������������������$��"��������������������������������������������#��"��������������������������������������������#��"��������������������������������������������#��*��������������������������������������������+��(��������������������������������������������)��'��������������������������������������������'��&��������������������������������������������&��?��������������������������������������������?��<��������������������������������������������=��9��������������������������������������������;��7��������������������������������������������A��63[4]5mm]5\]m]mm5\mm5555555\\\5\\\5m\55\\5ed:���cOXY/P.Z0.0.QR00/ZPP0000000/0PPZR.BI@/DE0, �C��WkV21TSav^8{|}>qooggggggg1`_fhsnHK�{JLp��G���l�����������������������������������������-F�j���Nw~ytMMMMMMUbbrrrrrxxxxxxxxrriUMMMMMMMMMUuzt���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������  ������  ������  ������  �                                                                                                                                                                                                                                                                         �      ������  ������  ������  ������  ������  �      �� ��     	        (       @                             ~r�     YRO �M" �M" �M" �O$ �S( �S) xH0 ~L3 wG0 wH0 rE. xI1 �YB \TP XRO �K �N! �O" �N" �N" �O$ xI0 pE. ZSO �h: �lA �j@ Ȕs Ǘz �B  �@  �i7 ̖q ʕr YSO b_] �F  �E  �C  �D  �E  �C  �n5 �l6 �f> Ηn ɗs [TO �L  �I  �J  �I  �s- �r. �p0 �o1 לj ��_ ՛k Қl Йm ZTO �Y  �K  �I �w* �v, ۞h ٝi �i  �Y  �S  �{$ �z& �x' ߢe ݡf �m  �k  �l  �m  �n  �o  �n  �j  �m  �k  �q �} �$ ކ* ݉* �7 �? ��D Ջ; �@ �Q �b �c �b �b �o  �f  �q �r �x � � � �{ �z �{ �z �u ۀ ܀ ܀ ܁ ܁ ܂ ܃ ܂ ݃ ݄ ܄ ݄ ݅ �! ݆ �$ ݆! �& �' �* �+ �- ۉ* �/ �/ �3 �3 ��5 �6 �5 �7 �7 �8 �; �= �? ԍ7 ��V �p ��� ^][ �Ҫ �Ѵ �϶ �ϴ �ϵ �ͳ �ѷ �ҹ �ӹ �ҹ �Ӹ �ӹ �ս ��� ��� ��� ��� ��� ��� ��� ��� ��� .j� ��� ��� ttt ```                                                                                                                                                                                                                                                                                         ����������������������������������������������������������������������������������������������������������������������������������		
&�������������������������������1������������������������������������������������������������"���������������������������$��.���������������������������#%��-���������������������������0%��:���������������������������?%��9���������������������������>%��8���������������������������=%��7���������������������������;��E���������������������������G@��D���������������������������F@��M���������������������������O@��L���������������������������N2��K���������������������������h2��\���������������������������g2��]���������������������������f2��[�������������������������������I3')+*+)))*))()*+++,6J!54 CBA���jYPQTVTSkllZTTXRTUiHceWda/� i���u����`�������������������_<bm����t^��}zy|yx~���{|yvrrwsqpon������������������������������������������������������������������������������������������������������������������������������������������������   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �  �  ����������������h      �� ��     	        (                                        |WR ��� �Q3 �O1 ��b sP? �Q2 �Q2 �Y9 �^G ײ� �`E ۹� �cE �bE ݹ� ��� �o7 �f@ �gD �eD 㼜 ໝ �Ü 徚 �b �c �c �d �c �d �d �s  �x( ·> �zZ 翘 ��� �g ഄ ��x �$ �& �* �+ �+ �, �- �- �/ �0 �4 �6 ��I ��� ��� ��� ��� �ڽ ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ���  ~~~ }}}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PPPPPPPPPPPPPPPPPKMNNNNNNNNNNOLO	O&:
OJHHGGGGGGGGHI
OJEEEEEEEEEEFCOJEEEEEEEEEEFCOJEEEEEEEEEEFDOJEFEEEEEEEEEBO%JEEEEEEEEEFFBOJJIIIIJIIIIJJO(@>=77A779?<8;$O' "!)O6530./21+*-,4#4PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP����� ��  ��  ��  ��  ��  ��  �  ��  ��  ��  ��  �� ����������%      �� ��     	        (   0   `                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��H#��P'��Q'��Q'��Q'��Q'�   �   �Q&ݤR&��R&��R'��R&��R&��R&��R&��R&��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��Q'��R'�   �   �R&����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������S&�   �   �S%����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������S$�   �   �U$����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������U#�   �   �V"����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������V"�   �   �W!����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������X �   �   �Y����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������X �   �   �Z����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Z�   �   �\����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������[�   �   �]����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������]�   �   �^����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������_�   �   �`����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������`�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �a����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������a�   �   �c����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������c�   �   �d����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������d�   �   �g����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������g�   �   �g����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������g�   �   �g����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������g�   �   �h����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������i��   �i����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������i��   !�k����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������k��   "�l
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������l
��   "�n	����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������n	��   "�o����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������p��   "�p����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������q��   !�r����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������w��   �c��_��]��[��\��[��\��\��\��[��[��\��\��\��\��\��[��[��\��\��[��[��[��[��[��[��[��[��[��[��[��[��[��[��[��\��[��[��[��[��[��[��\��]��b��t��   �e��f ��e��c��b��c ��b ��c��b��b ��b��b ��b ��c ��b��b��b��c��c ��c ��b��b��b��b��b��b��b��b��b��c ��c ��c��c ��b ��o�֎@��h	��b��y"��}'��b��e)�qj���iP��t��t��   �j��n��r��s��t��u��t��u��w��u��v��y��{��z��{��z��x
��v��w��w��u��u��u��u��u��u��u��t��t��v��v��v��w��v��E���|�݂��y���U������u�{r��Fp��cq��Ȃ3��w�   �   �o��y��S��^��E��D��I��I��D��:��B��I��6��3��8��?��@��=��>��>��=��=��=��=��=��=��=��8��,��0��0��-��.��(��'��,��0��-��0��1��7��8�ʌP�ߋ,�ی1��q�   J   �w 1�q ��v��z��x	��v��s ��s ��s ��s ��s ��s ��t��t��t��u��u��u��u��u��w��w��w��w��w��w��w��w��u��u��u��t��s ��s ��s ��s ��s ��s ��s ��s ��s ��t��w��x
��v��` W                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ������  ������  ������  �                                                                                                                                                                                                                                                                                                                             ������  ������  ������  ������  ������  �      �� ��     	        (       @                                                                                                                                                                                                                                                                                                                                                                                                     ^   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   i   �G ��>�:��9��8��8��8��9��:��:��:��:��:��:��:��:��:�:�:�:�:�:�:�:�:�:�:�:�:�i2�	�   ,�K��S(��O$��N!��N!��N!��N!��N"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��M"��N"��M"��M"��O$��S)��O"��   1�lA�����������������������������������������������������������������������������������������������������������������ɗs�#�   -�j@�����������������������������������������������������������������������������������������������������������������Ǘz�
�   +�h:�����������������������������������������������������������������������������������������������������������������Ȕs�	 �   +�i7�����������������������������������������������������������������������������������������������������������������ʕr�
 �   +�l6�����������������������������������������������������������������������������������������������������������������̖q�
 �   +�n5�����������������������������������������������������������������������������������������������������������������Ηn�
 �   +�o1�����������������������������������������������������������������������������������������������������������������Йm� �   +�p0�����������������������������������������������������������������������������������������������������������������Қl� �   *�r.�����������������������������������������������������������������������������������������������������������������՛k� �   #�r.�����������������������������������������������������������������������������������������������������������������՛k� �   "�s-�����������������������������������������������������������������������������������������������������������������לj� �   "�v,�����������������������������������������������������������������������������������������������������������������ٝi� �   "�w*�����������������������������������������������������������������������������������������������������������������۞h� �   "�x'�����������������������������������������������������������������������������������������������������������������ݡf� �   "�z&�����������������������������������������������������������������������������������������������������������������ߢe� �   "�{$������������������������������������������������������������������������������������������������������������������b� �   "�$������������������������������������������������������������������������������������������������������������������b� �   "ކ*������������������������������������������������������������������������������������������������������������������c� �   "�}������ս��ҹ��ҹ��ӹ��ӹ��ҹ��ӹ��ӹ��ӹ��ӹ��ҹ��ӹ��ҹ��ҹ��ҹ��ҹ��ҹ��ҹ��Ӹ��϶��ͳ��ѷ��ϵ��ϴ��Ѵ��Ҫ�����ԍ7��   "�Y ��L ��F ��C ��E ��D ��E ��C ��C ��C ��D ��C ��C ��E ��C ��C ��D ��E ��E ��E ��C ��I ��S ��@ ��J ��I ��B ��I��K ��Y ��   $�f ��k ��m ��k ��n ��n ��n ��m ��q��r��r��q��n ��n ��m ��m ��l ��n ��o ��o ��i ��@��b��j ��Q���D��f>�.j��~r���o ��   �n �ۉ*���V��=��;��?��7��3��?��/��/��8��7��5��6��6��-��&��*��'��!��+��3��$��3���5��7���_�Ջ;��x�h   �t b�x�܄�܀��}��{��z��z
��|��z	��y
��|��}��}������~��{��|��z	��y��s ��s ��y��t ��t ��{ ��} ��|��m �                                                                                                                                                                                                                                                                                                                                                                                                       ���������                                                                                                          ������������h      �� ��     	        (                                                                                      
      k   �   �   �   �   �   �   �   �   �   �   �   �   {   O�O&��F#�C!�C!�C!�C!�C!�C!�C!�C!�C!�C!�A �E$�R(�   pְ������������������������������������������������������rE+�   pٵ������������������������������������������������������qD)�   p۵������������������������������������������������������tF'�   p޷������������������������������������������������������wH'�   pḖ�����������������������������������������������������zI&�   p五�����������������������������������������������������}L%�   p滒������������������������������������������������������N%�   p���������������������������������������������������������M!�   pް}��������������������������������������������������ڽ��c>�   p�c��d��c��d��d��d��c��b��c��c��x(��s ��o7�|WR��zW�   R�y��*����������������������$��1�mp   	                                                                                                                                � :�  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ����������v       �� ��l     0	                 �  	    (  
 00    �         �       h   00     �%          �        h     �      �� ��m     0	             & F i l e     �~& F i n d . . .         � i E & x i t    & H e l p   � h & A b o u t   . . .   � T e s t s     �G e t   S o u r c e     �G e t   T e x t     �P o p u p   W i n d o w     �R e q u e s t     �P l u g i n   I n f o     �Z o o m   I n     �Z o o m   O u t     �Z o o m   R e s e t     �B e g i n   T r a c i n g     �E n d   T r a c i n g     �P r i n t   � �O t h e r   T e s t s            ��	 ��m     0 	         ? h   � / h   �       �� ��g     0	        � �        � K     A b o u t    S y s t e m       P     	    ��� ��k   � P    1 
 w  ����� c e f c l i e n t   V e r s i o n   1 . 0       P    1  w  ����� C o p y r i g h t   ( C )   2 0 0 8        P    �     ��� O K       l       �� ��     0	                      	 c e f c l i e n t           	 C E F C L I E N T  C E F C L I E N T - O S R - W I D G E T   