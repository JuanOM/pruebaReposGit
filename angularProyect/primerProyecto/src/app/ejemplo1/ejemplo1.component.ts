import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ejemplo1',
  templateUrl: './ejemplo1.component.html',
  styleUrls: ['./ejemplo1.component.css']
})
export class Ejemplo1Component implements OnInit {

  name = 'Juan Ulises';
  semana = ['Lunes', 'Martes', 'Miercoles', 'Jueves'];

  constructor() { }

  ngOnInit() {
  }

  saludar(alguien) {
    const saludando = 'Hola' + alguien;
    console.log(saludando);
  }

  changedias(dia) {
    const diaselec = 'Dia seleccionado' + dia;
    console.log(diaselec);
  }

  onClickSubmit(data) {
    alert('Entered Email id : ' + data.emailid + ' ' + data.passwd);
  }

}
