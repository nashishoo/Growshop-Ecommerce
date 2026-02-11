  # Conectados 420 Growshop

> **La plataforma integral para el cultivador moderno.** GestiÃ³n de ventas, comunidad y administraciÃ³n especializada.


**Live:** https://nashishoo.github.io/Growshop-Ecommerce/

![Hero Section](https://i.postimg.cc/J7ccxcDG/hero-420.png)

## ðŸ“– Sobre el Proyecto

**Conectados 420** es un e-commerce robusto diseÃ±ado especÃ­ficamente para el rubro del cultivo ("Growshop"). No es solo una tienda online; es un ecosistema completo que integra:

*   ðŸ“± **Tienda PÃºblica (Frontend)**: Interfaz moderna, rÃ¡pida y responsiva para clientes.
*   ï¿½ï¸ **Panel de AdministraciÃ³n (Backoffice)**: Control total sobre inventario, pedidos, clientes y logÃ­stica.
*   ðŸ§  **Backend Serverless**: Potenciado por Supabase para autenticaciÃ³n y base de datos en tiempo real.

> [!NOTE]
> **Inventario Precargado**: El catÃ¡logo inicial de productos ha sido generado mediante un scraper desarrollado a medida, permitiendo desplegar la tienda con datos reales desde el dÃ­a uno.

---

## ðŸš€ CaracterÃ­sticas Principales

### Para el Cliente
Una experiencia de compra fluida y confiable.

*   **NavegaciÃ³n Intuitiva**: CategorÃ­as claras (Indoor, Semillas, Parafernalia, etc.) y bÃºsqueda instantÃ¡nea.
*   **Club 420**: Sistema de registro con beneficios exclusivos y seguimiento de historial.
*   **Pagos Seguros**: IntegraciÃ³n nativa con **Mercado Pago**.
*   **Notificaciones**: Emails automÃ¡ticos de confirmaciÃ³n de pedido.

<div align="center">
  <img src="https://i.postimg.cc/L524mZMC/comprobante-pago-420.png" alt="Comprobante de Pago" width="45%" style="margin: 5px;" />
  <img src="https://i.postimg.cc/PJTfd8kR/login-420.png" alt="Login de Usuario" width="45%" style="margin: 5px;" />
</div>

### Para el Administrador
Un centro de comando para operar el negocio sin fricciÃ³n.

*   **Dashboard en Tiempo Real**: MÃ©tricas clave de ventas y stock.
*   **GestiÃ³n de Pedidos**: Flujo de estados (Pendiente -> Preparando -> Enviado).
*   **LogÃ­stica**: ConfiguraciÃ³n de zonas de envÃ­o y seguimiento de couriers.
*   **Marketing**: Motor de cupones de descuento.

![Dashboard Admin](https://i.postimg.cc/gkzyTX83/admin-panel-dashboard.png)

---

## ðŸ“¸ GalerÃ­a del Sistema

### Plataforma de Ventas

| Productos Destacados | Ficha Destacada | Ficha ComÃºn |
|:---:|:---:|:---:|
| ![Destacados](https://i.postimg.cc/QChNjW3X/destacados-420.png) | ![Ficha Destacada](https://i.postimg.cc/cC01d8S0/destacado-modal-420.png) | ![Ficha ComÃºn](https://i.postimg.cc/fyDWM0Ns/modal-comun-420.png) |

| Banco GenÃ©tico | Parafernalia |
|:---:|:---:|
| ![Semillas](https://i.postimg.cc/j2tqRJbR/banco-genetico-420.png) | ![Accesorios](https://i.postimg.cc/PJTfd8k0/parafernaria-420.png) |

### Panel de AdministraciÃ³n

| GestiÃ³n de Productos | Cola de EnvÃ­os |
|:---:|:---:|
| ![Admin Productos](https://i.postimg.cc/wTq5GyLm/admin-panel-productos.png) | ![Admin EnvÃ­os](https://i.postimg.cc/3J8jc4m0/admin-panel-cola-envios.png) |

---

## ðŸ› ï¸ Stack TecnolÃ³gico

El proyecto utiliza tecnologÃ­as modernas para garantizar rendimiento y escalabilidad.

*   **Frontend**: React + Vite (Velocidad y experiencia de desarrollo).
*   **Estilos**: Tailwind CSS (DiseÃ±o responsive y customizaciÃ³n rÃ¡pida).
*   **Backend / DB**: Supabase (PostgreSQL, Auth, Edge Functions).
*   **Pagos**: SDK de Mercado Pago.
*   **Despliegue**: Compatible con Vercel / Netlify.

---

## ï¿½ InstalaciÃ³n y Despliegue Local

> [!TIP]
> **RecomendaciÃ³n Pro**: Este proyecto tiene una arquitectura moderna y robusta. Si el proceso de despliegue te parece complejo, **te recomendamos encarecidamente usar un Agente de IA** (como Cursor, Windsurf o este mismo agente) para que te asista. Â¡Entre IAs nos entendemos mejor! ðŸ¤–âœ¨

Sigue estos pasos para levantar el proyecto en tu entorno local.

### Prerrequisitos
*   Node.js (v18+)
*   Cuenta en Supabase
*   Cuenta Developer en Mercado Pago (para credenciales de prueba)

### 1. Clonar el repositorio
```bash
git clone https://github.com/nashishoo/Growshop-model.git
cd Growshop-model
```

### 2. Instalar dependencias
```bash
cd frontend
npm install
```

### 3. Configurar Variables de Entorno
Crea un archivo `.env` en la carpeta `frontend` basado en `.env.example`:

```env
VITE_SUPABASE_URL=tu_url_supabase
VITE_SUPABASE_ANON_KEY=tu_clave_anonima
VITE_MERCADOPAGO_PUBLIC_KEY=tu_public_key_mp
```

### 4. Configurar Base de Datos (Supabase)
Para tener la base de datos funcional con datos de prueba:

1.  Ve al **SQL Editor** de tu proyecto en Supabase.
2.  Copia y ejecuta el contenido de `supabase/schema_dump.sql` (Crea la estructura).
3.  Copia y ejecuta el contenido de `supabase/seed.sql` (Pobla categorÃ­as, marcas y configuraciÃ³n).

### 5. Configurar Edge Functions (AutomatizaciÃ³n)
Para que funcionen los correos y los pagos, debes desplegar las funciones en Supabase:

1.  Instala Supabase CLI: `npm i -g supabase`
2.  Logueate: `supabase login`
3.  Vincula tu proyecto: `supabase link --project-ref tu_project_id`
4.  Establece los secretos (Credenciales privadas):
    ```bash
    supabase secrets set MP_ACCESS_TOKEN=tu_access_token_mercadopago
    supabase secrets set RESEND_API_KEY=tu_api_key_resend
    supabase secrets set FROM_EMAIL="Tu Tienda <no-reply@tudominio.com>"
    ```
5.  Despliega las funciones:
    ```bash
    supabase functions deploy
    ```

### 6. Iniciar el servidor de desarrollo
```bash
npm run dev
```
La aplicaciÃ³n estarÃ¡ disponible en `http://localhost:5173`.

---

## ðŸ“š DocumentaciÃ³n Adicional

*   [Manual de Usuario Completo](docs/MANUAL_USUARIO.md): GuÃ­a detallada de uso para clientes y staff.
*   [ConfiguraciÃ³n de Mercado Pago](docs/MERCADOPAGO_SETUP.md): Pasos para activar la pasarela de pagos.

---

Desarrollado con ðŸ’š para la comunidad cultivadora.
