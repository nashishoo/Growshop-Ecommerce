-- =====================================================
-- Conectados 420 - Seed Data (Datos Iniciales)
-- =====================================================

-- 1. Store Settings (Configuración Básica)
INSERT INTO store_settings (setting_key, setting_value, setting_type, description) VALUES
('store_name', 'Conectados 420', 'string', 'Nombre de la tienda'),
('contact_email', 'contacto@conectados420.cl', 'string', 'Email de contacto principal'),
('contact_phone', '+56912345678', 'string', 'Teléfono de contacto'),
('instagram_url', 'https://instagram.com/conectados420', 'string', 'URL de Instagram'),
('shipping_policy', 'Envíos a todo Chile vía Starken o Chilexpress.', 'string', 'Política de envíos')
ON CONFLICT (setting_key) DO NOTHING;

-- 2. Categories (Categorías Principales)
-- Insertamos categorías padre
INSERT INTO categories (name, slug, description, image_url, is_active, display_order) VALUES
('Indoor', 'indoor', 'Carpas, iluminación y ventilación para cultivo interior.', 'https://i.postimg.cc/QChNjW3X/destacados-420.png', true, 1),
('Semillas', 'semillas', 'Variedades automáticas y feminizadas de los mejores bancos.', 'https://i.postimg.cc/j2tqRJbR/banco-genetico-420.png', true, 2),
('Sustratos', 'sustratos', 'Tierras y medios de cultivo de alta calidad.', 'https://i.postimg.cc/QChNjW3X/destacados-420.png', true, 3),
('Fertilizantes', 'fertilizantes', 'Nutrientes para crecimiento y floración.', 'https://i.postimg.cc/QChNjW3X/destacados-420.png', true, 4),
('Parafernalia', 'parafernalia', 'Bongs, pipas, papelillos y accesorios.', 'https://i.postimg.cc/PJTfd8k0/parafernaria-420.png', true, 5)
ON CONFLICT (slug) DO NOTHING;

-- 3. Brands (Marcas Populares)
INSERT INTO brands (name, slug, is_active) VALUES
('Biobizz', 'biobizz', true),
('Top Crop', 'top-crop', true),
('Advanced Nutrients', 'advanced-nutrients', true),
('Dutch Passion', 'dutch-passion', true),
('Royal Queen Seeds', 'royal-queen-seeds', true),
('Raw', 'raw', true),
('Conectados 420', 'conectados-420', true)
ON CONFLICT (slug) DO NOTHING;

-- 4. Shipping Zones (Zonas de Envío Ejemplo)
INSERT INTO shipping_zones (name, regions, shipping_cost, free_shipping_threshold, is_active) VALUES
('Santiago - Urbano', ARRAY['Santiago', 'Providencia', 'Las Condes', 'Ñuñoa'], 3990, 50000, true),
('Regiones - Zona Central', ARRAY['Valparaíso', 'Viña del Mar', 'Rancagua'], 5990, 80000, true),
('Regiones - Extremo', ARRAY['Arica', 'Punta Arenas'], 9990, 120000, true);

-- =====================================================
-- Instrucciones para crear Admin:
-- 1. Regístrate en la app con un usuario normal.
-- 2. Corre el siguiente SQL reemplazando tu EMAIL:
-- UPDATE profiles SET role = 'admin' WHERE email = 'tu_email@ejemplo.com';
-- =====================================================
