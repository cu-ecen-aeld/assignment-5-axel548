
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 'COMMIT_HASH' # Cambia 'COMMIT_HASH' con el hash del commit que deseas referenciar
# Nota: Asegúrate de utilizar la URL del repositorio *ssh* aquí (no https) para funcionar correctamente con las claves ssh y el sistema automatizado de construcción/pruebas.
# Tu sitio debería comenzar con git@github.com:
AESD_ASSIGNMENTS_SITE = 'git@github.com:tu_usuario/tu_repositorio.git' # Cambia 'tu_usuario' y 'tu_repositorio' con tu información
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

# TODO: Añade tus utilidades/scripts writer, finder y finder-test a los pasos de instalación a continuación
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
endef

$(eval $(generic-package))

