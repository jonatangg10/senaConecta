<div class="modal" id="exampleModal"  tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Registrar Nuevo Evento</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
  <?php if($_SESSION['rol'] == 1 OR $_SESSION['rol'] == 4){?>
    <?php if($contadorIns2 > 0){ ?>
      <form name="formEvento" id="formEvento" action="nuevoEventoCurso.php" class="form-horizontal" method="POST">
          <div class="card-body">
            <div class="row">
              <div class="form-group col-md-12">
                <label for="instructor" class="col-sm-12 control-label">Instructor a cargo</label>
                <select class="form-control" name="instructor" id="instructor">
                  <option value=""  selected disabled>Selecciona una opción</option>
                  <?php foreach($resulIns2 AS $r){?>
                    <option value="<?=$r['num_doc']?>"><?=$r['nombres']?> <?=$r['apellidos']?></option> 
                  <?php }?>
                </select>
              </div> 
              <div class="form-group col-md-6">
                <label for="nivelAcademico" class="col-sm-12 control-label">Nivel academico</label>
                    <input type="text" class="form-control" name="nivelAcademico" id="nivelAcademico" value="<?=$_SESSION['calendarioCurso'][0]['nom_nivel']?>" disabled>
              </div>
              <div class="form-group col-md-6">
                <label for="nombreTitulacion" class="col-sm-12 control-label">Nombre de la titulacion</label>
                  <input type="text" class="form-control" name="nombreTitulacion" id="nombreTitulacion" value="<?=$_SESSION['calendarioCurso'][0]['denominacion_prog']?>" disabled>
              </div>
              <div class="form-group col-md-12">
                <label for="evento" class="col-sm-12 control-label">Tipo competencia</label>
                <select class="form-control" name="tCompetencia" id="tipocompe" >
                  <option value="" selected disabled>Selecciona una opcion</option>
                  <?php foreach($resulTipoCompetencia AS $r){?>
                    <option value="<?=$r['id']?>"><?=$r['tipo']?></option> 
                  <?php }?>
                </select>
              </div>
              <div class="form-group col-md-12" id="displayCompetencia" style="display: none;">
                <label for="evento" class="col-sm-12 control-label">Competencia</label>
                <select class="form-control" name="Competencia" id="compeasignada" >
                  
                </select>
              </div>
              <input type="hidden" class="form-control" name="fecha_inicio" id="fecha_inicio" placeholder="Fecha Inicio" required>
              <input type="hidden" class="form-control" name="fechas[]" id="fecha_fin" placeholder="Fecha Final" required>

              <div class="form-group col-md-12" style="margin-bottom:5px;">
                <label for="fecha_asignacion" class="col-sm-12 control-label">
                  Fecha de asignación
                  <button type="button" class="btn btn-success" id="agregar" onclick="resultC()" style="margin-left: 10px;">+</button>
                  <button type="button" class="btn btn-danger" id="eliminar" onclick="eliminarUDivC()" style="margin-left: 10px;">-</button>
                </label>
                
              </div>

              <div id="fechas" class="form-group col-md-12">
                <input type="date"  value= '2023-10-11' class="form-control" name="fecha_asignacion" id="fecha_asignacion" placeholder="Fecha de asignación" style="margin-bottom: 5px;"  required disabled>
              </div>
              <div class="form-group col-md-6">
                <label for="hora_Inicio" class="col-sm-12 control-label">Hora de inicio de la asignación</label>
                <input type="time" class="form-control" name="hora_Inicio" id="hora_Inicio" required>
              </div>
              <div class="form-group col-md-6">
                <label for="hora_Fin" class="col-sm-12 control-label">Hora de fin de la asignación</label>
                <input type="time" class="form-control" name="hora_Fin" id="hora_Fin" required>
              </div>
              <div class="form-group col-md-12"><hr></div> 
              <div class="form-group col-md-6">
                <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Salir</button>
              </div>
              <div class="form-group col-md-6">
                <button type="submit" class="btn btn-success btn-block">Guardar Evento</button>
              </div>
            </div>
          </div>		
	      </form>  
    <?php }else{?>
          <div class="card-body">
            <div class="row">
              <div class="form-group col-md-12">
                <center><h5><?=$_SESSION['nombres']?>, no hay instrutores disponibles para poder realizar programaciones</h5></center><hr>
              </div>
              
              <div class="form-group col-md-12">
                <button type="button" class="btn btn-info btn-block" data-dismiss="modal">Salir</button>
              </div>
            </div>
          </div>
    <?php } ?>

  <?php }else{?>
    <?php if($contadorIns > 0){ ?>
          <form name="formEvento" id="formEvento" action="nuevoEventoCurso.php" class="form-horizontal" method="POST">
          <div class="card-body">
            <div class="row">
              <div class="form-group col-md-12">
                <label for="instructor" class="col-sm-12 control-label">Instructor a cargo</label>
                <select class="form-control" name="instructor" id="instructor">
                  <option value=""  selected disabled>Selecciona una opción</option>
                  <?php foreach($resulIns AS $r){?>
                    <option value="<?=$r['num_doc']?>"><?=$r['nombres']?> <?=$r['apellidos']?></option> 
                  <?php }?>
                </select>
              </div> 
              <div class="form-group col-md-6">
                <label for="nivelAcademico" class="col-sm-12 control-label">Nivel academico</label>
                    <input type="text" class="form-control" name="nivelAcademico" id="nivelAcademico" value="<?=$_SESSION['calendarioCurso'][0]['nom_nivel']?>" disabled>
              </div>
              <div class="form-group col-md-6">
                <label for="nombreTitulacion" class="col-sm-12 control-label">Nombre de la titulacion</label>
                  <input type="text" class="form-control" name="nombreTitulacion" id="nombreTitulacion" value="<?=$_SESSION['calendarioCurso'][0]['denominacion_prog']?>" disabled>
              </div>
              <div class="form-group col-md-12">
                <label for="evento" class="col-sm-12 control-label">Tipo competencia</label>
                <select class="form-control" name="tCompetencia" id="tipocompe" >
                  <option value="" selected disabled>Selecciona una opcion</option>
                  <?php foreach($resulTipoCompetencia AS $r){?>
                    <option value="<?=$r['id']?>"><?=$r['tipo']?></option> 
                  <?php }?>
                </select>
              </div>
              <div class="form-group col-md-12" id="displayCompetencia" style="display: none;">
                <label for="evento" class="col-sm-12 control-label">Competencia</label>
                <select class="form-control" name="Competencia" id="compeasignada" >
                  
                </select>
              </div>
              <input type="hidden" class="form-control" name="fecha_inicio" id="fecha_inicio" placeholder="Fecha Inicio" required>
              <input type="hidden" class="form-control" name="fechas[]" id="fecha_fin" placeholder="Fecha Final" required>

              <div class="form-group col-md-12" style="margin-bottom:5px;">
                <label for="fecha_asignacion" class="col-sm-12 control-label">
                  Fecha de asignación
                  <button type="button" class="btn btn-success" id="agregar" onclick="resultC()" style="margin-left: 10px;">+</button>
                  <button type="button" class="btn btn-danger" id="eliminar" onclick="eliminarUDivC()" style="margin-left: 10px;">-</button>
                </label>
                
              </div>

              <div id="fechas" class="form-group col-md-12">
                <input type="date"  value= '2023-10-11' class="form-control" name="fecha_asignacion" id="fecha_asignacion" placeholder="Fecha de asignación" style="margin-bottom: 5px;"  required disabled>
              </div>
              <div class="form-group col-md-6">
                <label for="hora_Inicio" class="col-sm-12 control-label">Hora de inicio de la asignación</label>
                <input type="time" class="form-control" name="hora_Inicio" id="hora_Inicio" required>
              </div>
              <div class="form-group col-md-6">
                <label for="hora_Fin" class="col-sm-12 control-label">Hora de fin de la asignación</label>
                <input type="time" class="form-control" name="hora_Fin" id="hora_Fin" required>
              </div>
              <div class="form-group col-md-12"><hr></div> 
              <div class="form-group col-md-6">
                <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Salir</button>
              </div>
              <div class="form-group col-md-6">
                <button type="submit" class="btn btn-success btn-block">Guardar Evento</button>
              </div>
            </div>
          </div>		
	      </form>  
        <?php }else{ ?>
          <div class="card-body">
            <div class="row">
              <div class="form-group col-md-12">
                <center><h5><?=$_SESSION['nombres']?>, no tiene instrutores a su cargo para poder realizar programaciones</h5></center><hr>
              </div>
              
              <div class="form-group col-md-12">
                <button type="button" class="btn btn-info btn-block" data-dismiss="modal">Salir</button>
              </div>
            </div>
          </div>
          
        <?php } ?>
  <?php }?>

         
    </div>
  </div>
</div>

<style>
  #eliminar{
      display: none;
  }
</style>

<script>



  function resultC(){
    // alert('hola');
    let divPrincipal = document.createElement("div");
    divPrincipal.className = "input-group mb-1";

    let input = document.createElement("input");
    input.type = "date";
    input.className = "form-control";
    input.name = "fechas[]";
    input.required = true;

    let divAppend = document.createElement("div");
    divAppend.className = "input-group-append";

    let span = document.createElement("span");
    span.className = "input-group-text";
    let icono = document.createElement("i");
    icono.className = "bi bi-trash";

    icono.onclick = function() {

      eliminarDivC(divPrincipal);
    };

    span.appendChild(icono);
    divAppend.appendChild(span);
    divPrincipal.appendChild(input);
    divPrincipal.appendChild(divAppend);

    document.getElementById("fechas").appendChild(divPrincipal);

    let eliminar = document.getElementById("eliminar");
    eliminar.style.display="inline";

    document.getElementById("iconoBorrar").style.display="inline";
  }

  function eliminarDivC(div) {
    
    let resultados = document.getElementById("fechas");
    //alert(resultados.childNodes.length);
    resultados.removeChild(div);
          
    // alert(resultados.childNodes.length)
    if(resultados.childNodes.length == 3){
        let eliminar =document.getElementById("eliminar");
        eliminar.style.display="none";
    }
   
      
  }
  function eliminarUDivC() {
      let resultados = document.getElementById("fechas");
      let divs = resultados.getElementsByClassName("input-group");
      // alert(divs.length);
      if (divs.length > 0) {
          resultados.removeChild(divs[divs.length - 1]);
          if (divs.length == 0){
              let eliminar =document.getElementById("eliminar");
              eliminar.style.display="none";   
          }   
      }   
  }

</script>