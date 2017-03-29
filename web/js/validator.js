/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* ARCHIVO PARA VALIDAR LOS FORMULARIOS DESDE LA VISTA*/


$(function () {
    $('#loginForm').bootstrapValidator({
        message: 'Este valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            Usuario: {
                validators: {
                    notEmpty: {
                        message: 'El nombre de usuario es requerido'

                    }

                }

            },
            Contrasena: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es requerida'

                    }

                }

            }

        }

    });
});

$(function () {
    $('#RCliente').bootstrapValidator({
        message: 'Este valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es requerido'

                    }

                }

            },
            apellido: {
                validators: {
                    notEmpty: {
                        message: 'El apellido es requerido'

                    }}

            },
            telefono: {
                message: 'El teléfono no es valido',
                validators: {
                    notEmpty: {
                        message: 'El teléfono es requerido'

                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El teléfono solo puede contener números'

                    }

                }

            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'La email es requerido'
                    },
                    regexp: {
                        regexp: /^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$/,
                        message: 'Debe ser un formato de correo valido'

                    }
                }

            },
            carnet: {
                validators: {
                    notEmpty: {
                        message: 'El carnet es requerido'
                    }

                }

            },
            nodocumento: {
                validators: {
                    notEmpty: {
                        message: 'El documento es requerido'
                    }

                }

            },
            ciudad: {
                validators: {
                    notEmpty: {
                        message: 'La ciudad es requerida'
                    }

                }

            },
            direccion: {
                validators: {
                    notEmpty: {
                        message: 'La direccion es requerida'
                    }

                }

            },
            foto_no: {
                validators: {
                    notEmpty: {
                        message: 'La foto es requerida'
                    }

                }

            },
            fecha_n: {
                validators: {
                    notEmpty: {
                        message: 'La fecha es requerida'
                    }

                }

            }, usuario: {
                validators: {
                    notEmpty: {
                        message: 'El Usuario es requerido'
                    }

                }

            }, contrasena: {
                validators: {
                    notEmpty: {
                        message: "La Contraseña es requerida"
                    }
                }
            },
            contrasena_confir: {
                validators: {
                    notEmpty: {
                        message: "La confirmación es requerida"
                    },
                    identical: {
                        field: 'contrasena',
                        message: 'No coinciden las contraseñas'
                    }
                }
            }



        }



    });
});


$(function () {
    $('#contact_form').bootstrapValidator({
        message: 'Este valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es requerido'

                    }

                }

            },
            apellido: {
                validators: {
                    notEmpty: {
                        message: 'El apellido es requerido'

                    }}

            },
            telefono: {
                message: 'El teléfono no es valido',
                validators: {
                    notEmpty: {
                        message: 'El teléfono es requerido'

                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El teléfono solo puede contener números'

                    }

                }

            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'La email es requerido'
                    },
                    regexp: {
                        regexp: /^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$/,
                        message: 'Debe ser un formato de correo valido'

                    }
                }

            },
            carnet: {
                validators: {
                    notEmpty: {
                        message: 'El carnet es requerido'
                    }

                }

            },
            ciudad: {
                validators: {
                    notEmpty: {
                        message: 'La ciudad es requerida'
                    }

                }

            },
            direccion: {
                validators: {
                    notEmpty: {
                        message: 'La direccion es requerida'
                    }

                }

            },
            foto: {
                validators: {
                    notEmpty: {
                        message: 'La foto es requerida'
                    }

                }

            },
            fecha_n: {
                validators: {
                    notEmpty: {
                        message: 'La fecha es requerida'
                    }

                }

            }, usuario: {
                validators: {
                    notEmpty: {
                        message: 'El Usuario es requerido'
                    }

                }

            }, contrasena: {
                validators: {
                    notEmpty: {
                        message: "La Contraseña es requerida"
                    }
                }
            },
            contrasena_confir: {
                validators: {
                    notEmpty: {
                        message: "La confirmación es requerida"
                    },
                    identical: {
                        field: 'contrasena',
                        message: 'No coinciden las contraseñas'
                    }
                }
            }



        }
    });

});



$(function () {
    $('#REmpleado').bootstrapValidator({
        message: 'Este valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es requerido'

                    }

                }

            },
            apellido: {
                validators: {
                    notEmpty: {
                        message: 'El apellido es requerido'

                    }}

            },
            telefono: {
                message: 'El teléfono no es valido',
                validators: {
                    notEmpty: {
                        message: 'El teléfono es requerido'

                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El teléfono solo puede contener números'

                    }

                }

            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'La email es requerido'
                    },
                    regexp: {
                        regexp: /^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$/,
                        message: 'Debe ser un formato de correo valido'

                    }
                }

            },
            cargo: {
                validators: {
                    notEmpty: {
                        message: 'El cargo es requerido'
                    }

                }

            },
            documento: {
                validators: {
                    notEmpty: {
                        message: 'El documento es requerido'
                    }

                }

            },
            fecha_ini: {
                validators: {
                    notEmpty: {
                        message: 'La fecha es requerida'
                    }

                }

            }, usuario: {
                validators: {
                    notEmpty: {
                        message: 'El Usuario es requerido'
                    }

                }

            }, contrasena: {
                validators: {
                    notEmpty: {
                        message: "La Contraseña es requerida"
                    }
                }
            },
            contrasena_confir: {
                validators: {
                    notEmpty: {
                        message: "La confirmación es requerida"
                    },
                    identical: {
                        field: 'contrasena',
                        message: 'No coinciden las contraseñas'
                    }
                }
            }



        }



    });
});



$(function () {
    $('#RPelicula').bootstrapValidator({
        message: 'Este valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es requerido'

                    }

                }

            },
            genero: {
                validators: {
                    notEmpty: {
                        message: 'El genero es requerido'

                    }}

            },
            duracion: {
                validators: {
                    notEmpty: {
                        message: 'La duración es requerida'

                    }, integer: {
                        message: 'Debe ser un número'
                    }}
            },
            estado: {
                validators: {
                    notEmpty: {
                        message: 'El estado es requerido'
                    }}

            },
            ejemplar: {
                validators: {
                    notEmpty: {
                        message: 'El ejemplar es requerido'
                    }, integer: {
                        message: 'Debe ser un número'
                    }

                }

            },
            descripcion: {
                validators: {
                    notEmpty: {
                        message: 'La descripción es requerida'
                    }

                }

            }

        }

    });
});



$(function () {
    $('#RPrestamo').bootstrapValidator({
        message: 'Este valor no es valido',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            cliente: {
                validators: {
                    notEmpty: {
                        message: 'El cliente es requerido'

                    }

                }

            },
            pelicula: {
                validators: {
                    notEmpty: {
                        message: 'La pelicula es requerida'

                    }}

            },
            fecha_devolucion: {
                validators: {
                    notEmpty: {
                        message: 'La fecha es requerida'

                    }}
            },
            pago: {
                validators: {
                    notEmpty: {
                        message: 'El pago es requerido'
                    }, integer: {
                        message: 'Debe ser un número'
                    }}

            },
            empleado: {
                validators: {
                    notEmpty: {
                        message: 'El empleado es requerido'
                    }

                }

            }

        }

    });
});